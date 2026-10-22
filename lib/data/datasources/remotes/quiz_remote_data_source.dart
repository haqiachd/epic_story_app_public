import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:epic_story_app/core/constants/api_key.dart';
import 'package:epic_story_app/core/services/firebase_service.dart';
import 'package:epic_story_app/core/utils/epic_log.dart';
import 'package:epic_story_app/data/models/remotes/gemini_response.dart';
import 'package:get/get.dart';

class QuizRemoteDataSource {
  final FirebaseService fireService = Get.find<FirebaseService>();

  String? _normalizeToJsonString(String input) {
    // Try to extract JSON content even if wrapped in code fences or extra text.
    String candidate = input;

    final fencedMatch =
        RegExp(r"```(?:json)?\s*([\s\S]*?)\s*```", multiLine: true)
            .firstMatch(input);
    if (fencedMatch != null) {
      candidate = fencedMatch.group(1) ?? candidate;
    }

    String? _tryDecode(String text) {
      try {
        final decoded = json.decode(text);
        return json.encode(decoded);
      } catch (_) {
        return null;
      }
    }

    final start = candidate.indexOf('{');
    final end = candidate.lastIndexOf('}');
    if (start != -1 && end != -1 && end > start) {
      final slice = candidate.substring(start, end + 1);
      final normalized = _tryDecode(slice);
      if (normalized != null) return normalized;
    }

    final normalized = _tryDecode(candidate);
    if (normalized != null) return normalized;

    EpicLog.debug(
        "_normalizeToJsonString - failed to parse JSON from response");
    return null;
  }

  Future<String?> generate({required String prompt}) async {
    try {
      const List<String> modelFallbackOrder = [
        'gemini-2.5-flash',
        'gemini-2.5-flash-lite',
        'gemini-2.0-flash-lite',
        'gemini-1.5-flash',
      ];
      const int maxModelSwitches = 3;

      EpicLog.debug(
          "QuizRemoteDataSource - generate - starting generation prompt : $prompt");

      final Dio dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 10),
          sendTimeout: const Duration(seconds: 12),
          receiveTimeout: const Duration(seconds: 18),
        ),
      );
      for (int attempt = 0; attempt <= maxModelSwitches; attempt++) {
        if (attempt >= modelFallbackOrder.length) {
          break;
        }

        final String modelName = modelFallbackOrder[attempt];
        // generate response from gemini api
        final response = await dio
            .post(
              "https://generativelanguage.googleapis.com/v1beta/models/$modelName:generateContent",
              queryParameters: {
                "key": ApiKey.gemini,
              },
              data: json.encode(
                {
                  "contents": [
                    {
                      "role": "user",
                      "parts": [
                        {"text": prompt}
                      ]
                    },
                  ],
                  "generationConfig": {
                    "temperature": 0.8,
                    "topK": 0,
                    "topP": 0.95,
                    "maxOutputTokens": 8192,
                    "responseMimeType": "application/json", // ← tambah ini
                    "stopSequences": []
                  },
                  "safetySettings": [
                    {
                      "category": "HARM_CATEGORY_HARASSMENT",
                      "threshold": "BLOCK_NONE"
                    },
                    {
                      "category": "HARM_CATEGORY_HATE_SPEECH",
                      "threshold": "BLOCK_NONE"
                    },
                    {
                      "category": "HARM_CATEGORY_SEXUALLY_EXPLICIT",
                      "threshold": "BLOCK_NONE"
                    },
                    {
                      "category": "HARM_CATEGORY_DANGEROUS_CONTENT",
                      "threshold": "BLOCK_NONE"
                    }
                  ]
                },
              ),
              options: Options(
                headers: {'Content-Type': 'application/json'},
                validateStatus: (status) => true,
              ),
            )
            .timeout(const Duration(seconds: 22));

        EpicLog.debug(
            "QuizRemoteDataSource - generate - model: $modelName, status: ${response.statusCode}");

        // get payload from response
        final dynamic payload = response.data;

        // check response is successfully or not
        if (response.statusCode == HttpStatus.ok) {
          // get prompt result
          GeminiResponse geminiResponse = GeminiResponse.fromJson(payload);
          var geminiPayload =
              geminiResponse.candidates?[0].content?.parts?[0].text ?? '{}';

          try {
            fireService.incrementGeminiApiKeyUsage();
          } catch (ex, s) {
            EpicLog.exception(ex, s, this, 'incrementGeminiApiKeyUsage');
          }

          final normalized = _normalizeToJsonString(geminiPayload);
          if (normalized == null) {
            EpicLog.debug(
                "QuizRemoteDataSource - generate - failed to normalize JSON from model: $modelName");
            return null;
          }
          return normalized;
        }

        final bool isHighDemand =
            response.statusCode == HttpStatus.serviceUnavailable;
        final bool isRateLimited =
            response.statusCode == HttpStatus.tooManyRequests;
        final bool isModelNotFound = response.statusCode == HttpStatus.notFound;
        final bool canSwitchModel = attempt < maxModelSwitches &&
            attempt + 1 < modelFallbackOrder.length;

        if ((isHighDemand || isRateLimited || isModelNotFound) &&
            canSwitchModel) {
          EpicLog.debug(
              "QuizRemoteDataSource - generate - model $modelName unavailable (${response.statusCode}), switching model");
          continue;
        }

        if (isHighDemand || isRateLimited || isModelNotFound) {
          EpicLog.debug(
              "QuizRemoteDataSource - generate - model fallback exhausted: ${response.statusCode} - ${response.data}");
          return null;
        }

        EpicLog.debug(
            "QuizRemoteDataSource - generate - API error: ${response.statusCode} - ${response.data}");
        return null;
      }

      return null;
    } on TimeoutException {
      EpicLog.debug("QuizRemoteDataSource - generate - request timeout");
      return null;
    } on DioException catch (ex) {
      EpicLog.debug("QuizRemoteDataSource - generate - DioException: $ex");
      return null;
    }
  }
}

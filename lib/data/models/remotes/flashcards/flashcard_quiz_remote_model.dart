import 'dart:convert';

import 'package:epic_story_app/data/models/remotes/quiz/quiz_choice_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/quiz_fill_blank_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/quiz_group_remote_model.dart';

class FlashcardQuizRemoteModel {
  final int? quizType;
  final String? quizData;
  final String? explanation;
  final QuizChoiceRemoteModel? multipleChoice;
  final QuizFillBlankRemoteModel? fillBlank;
  final QuizGroupRemoteModel? group;

  const FlashcardQuizRemoteModel({
    this.quizType,
    this.quizData,
    this.explanation,
    this.multipleChoice,
    this.fillBlank,
    this.group,
  });

  factory FlashcardQuizRemoteModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const FlashcardQuizRemoteModel();

    final quizType = json['quizType'] as int?;
    final quizData = jsonEncode(json['data']);
    final explanation = json['explanation'] as String?;

    QuizChoiceRemoteModel? multipleChoice;
    QuizFillBlankRemoteModel? fillBlank;
    QuizGroupRemoteModel? group;

    // If multipleChoice exists explicitly, prefer it. Otherwise, attempt to decode quizData when it is choice type.
    if (quizType == 1) {
      try {
        final decoded = jsonDecode(quizData);
        if (decoded is Map<String, dynamic>) {
          multipleChoice = QuizChoiceRemoteModel.fromJson(decoded);
        }
      } catch (_) {
        // keep multipleChoice null if decode fails
      }
    } else if (quizType == 2) {
      try {
        final decoded = jsonDecode(quizData);
        if (decoded is Map<String, dynamic>) {
          fillBlank = QuizFillBlankRemoteModel.fromJson(decoded);
        }
      } catch (_) {
        // keep fillBlank null if decode fails
      }
    } else if (quizType == 3) {
      try {
        final decoded = jsonDecode(quizData);
        if (decoded is Map<String, dynamic>) {
          group = QuizGroupRemoteModel.fromJson(decoded);
        }
      } catch (_) {
        // keep group null if decode fails
      }
    }

    return FlashcardQuizRemoteModel(
      quizType: quizType,
      quizData: quizData,
      multipleChoice: multipleChoice,
      fillBlank: fillBlank,
      group: group,
      explanation: explanation,
    );
  }

  Map<String, dynamic> toJson() {
    final encodedQuizData = quizData ??
        (quizType == 1 && multipleChoice != null
            ? jsonEncode(multipleChoice!.toJson())
            : (quizType == 2 && fillBlank != null
                ? jsonEncode(fillBlank!.toJson())
                : (quizType == 3 && group != null
                    ? jsonEncode(group!.toJson())
                    : null)));

    return {
      'quizType': quizType,
      'quizData': encodedQuizData,
      'multipleChoice': multipleChoice?.toJson(),
      'fillBlank': fillBlank?.toJson(),
      'group': group?.toJson(),
      'explanation': explanation,
    };
  }
}

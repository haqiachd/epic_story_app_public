import 'dart:convert';

import 'package:epic_story_app/core/utils/epic_log.dart';
import 'package:epic_story_app/data/models/remotes/quiz/history/quiz_choice_answer_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/history/quiz_fill_blank_answer_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/history/quiz_group_answer_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/quiz_choice_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/quiz_fill_blank_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/quiz_group_remote_model.dart';

class FlashcardHistoryAnswerRemoteModel {
  final int? quizType;
  final int? retry;
  final String? question;
  final String? answer;
  final QuizChoiceRemoteModel? multipleChoiceQuestion;
  final QuizChoiceAnswerRemoteModel? multipleChoiceAnswer;
  final QuizFillBlankRemoteModel? fillBlankQuestion;
  final QuizFillBlankAnswerRemoteModel? fillBlankAnswer;
  final QuizGroupRemoteModel? groupQuestion;
  final QuizGroupAnswerRemoteModel? groupAnswer;

  const FlashcardHistoryAnswerRemoteModel({
    this.quizType,
    this.retry,
    this.question,
    this.answer,
    this.multipleChoiceQuestion,
    this.multipleChoiceAnswer,
    this.fillBlankQuestion,
    this.fillBlankAnswer,
    this.groupQuestion,
    this.groupAnswer,
  });

  factory FlashcardHistoryAnswerRemoteModel.fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) return const FlashcardHistoryAnswerRemoteModel();

    final quizType = json['quizType'] as int?;
    final retry = json['retry'] as int?;
    final question = json['question'] as String?;
    final answer = json['answer'] as String?;

    QuizChoiceAnswerRemoteModel? answerQuizChoice;
    QuizChoiceRemoteModel? questionQuizChoice;
    QuizFillBlankRemoteModel? questionQuizFillBlank;
    QuizFillBlankAnswerRemoteModel? answerQuizFillBlank;
    QuizGroupAnswerRemoteModel? answerQuizGroup;
    QuizGroupRemoteModel? questionQuizGroup;

    // If multipleChoice exists explicitly, prefer it. Otherwise, attempt to decode quizData when it is choice type.
    if (quizType == 1) {
      try {
        final answerDecoded = answer is String ? jsonDecode(answer) : answer;
        if (answerDecoded is Map<String, dynamic>) {
          answerQuizChoice = QuizChoiceAnswerRemoteModel.fromJson(
            answerDecoded,
          );
        }
        final questionDecoded =
            question is String ? jsonDecode(question) : question;
        if (questionDecoded is Map<String, dynamic>) {
          questionQuizChoice = QuizChoiceRemoteModel.fromJson(
            questionDecoded,
          );
        }
      } catch (_) {
        // keep answerQuizChoice null if decode fails
      }
    } else if (quizType == 2) {
      try {
        final answerDecoded = answer is String ? jsonDecode(answer) : answer;
        if (answerDecoded is Map<String, dynamic>) {
          answerQuizFillBlank = QuizFillBlankAnswerRemoteModel.fromJson(
            answerDecoded,
          );
        }
        final questionDecoded =
            question is String ? jsonDecode(question) : question;
        if (questionDecoded is Map<String, dynamic>) {
          questionQuizFillBlank = QuizFillBlankRemoteModel.fromJson(
            questionDecoded,
          );
        }
      } catch (ex, s) {
        EpicLog.exception(ex, s, 'fromJson quizType 2 decode error');
      }
    } else if (quizType == 3) {
      try {
        final answerDecoded = answer is String ? jsonDecode(answer) : answer;
        if (answerDecoded is Map<String, dynamic>) {
          EpicLog.debug('Decoded answer for quizType 3: $answerDecoded');
          answerQuizGroup = QuizGroupAnswerRemoteModel.fromJson(
            answerDecoded,
          );
        }
        final questionDecoded =
            question is String ? jsonDecode(question) : question;
        EpicLog.debug('Decoded question for quizType 3: $questionDecoded');
        if (questionDecoded is Map<String, dynamic>) {
          EpicLog.debug('Decoded question for quizType 3: $questionDecoded');
          questionQuizGroup = QuizGroupRemoteModel.fromJson(
            questionDecoded,
          );
        }
      } catch (ex, s) {
        EpicLog.exception(ex, s, 'fromJson quizType 3 decode error');
      }
    }
    return FlashcardHistoryAnswerRemoteModel(
      quizType: quizType,
      retry: retry,
      question: question,
      answer: answer,
      multipleChoiceQuestion: questionQuizChoice,
      multipleChoiceAnswer: answerQuizChoice,
      fillBlankQuestion: questionQuizFillBlank,
      fillBlankAnswer: answerQuizFillBlank,
      groupQuestion: questionQuizGroup,
      groupAnswer: answerQuizGroup,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'quizType': quizType,
      'retry': retry,
      'question': question,
      'answer': answer,
    };
  }
}

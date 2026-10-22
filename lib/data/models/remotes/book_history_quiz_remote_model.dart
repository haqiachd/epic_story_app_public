import 'dart:convert';

import 'package:epic_story_app/core/utils/epic_log.dart';
import 'package:epic_story_app/data/models/remotes/quiz/history/quiz_choice_answer_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/history/quiz_fill_blank_answer_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/history/quiz_group_answer_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/quiz_choice_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/quiz_fill_blank_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/quiz_group_remote_model.dart';

class BookHistoryQuizRemoteModel {
  final int? quizType;
  final int? retry;
  final String? question;
  final String? answer;
  final String? explanation;
  final QuizChoiceRemoteModel? multipleChoiceQuestion;
  final QuizChoiceAnswerRemoteModel? multipleChoiceAnswer;
  final QuizFillBlankRemoteModel? fillBlankQuestion;
  final QuizFillBlankAnswerRemoteModel? fillBlankAnswer;
  final QuizGroupRemoteModel? groupQuestion;
  final QuizGroupAnswerRemoteModel? groupAnswer;

  const BookHistoryQuizRemoteModel({
    this.quizType,
    this.retry,
    this.question,
    this.answer,
    this.explanation,
    this.multipleChoiceQuestion,
    this.multipleChoiceAnswer,
    this.fillBlankQuestion,
    this.fillBlankAnswer,
    this.groupQuestion,
    this.groupAnswer,
  });

  factory BookHistoryQuizRemoteModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const BookHistoryQuizRemoteModel();

    final quizType = json['quizType'] as int?;
    final retry = json['retry'] as int?;
    final question = json['question'] as String?;
    final answer = json['answer'] as String?;
    final explanation = json['explanation'] as String?;

    QuizChoiceAnswerRemoteModel? answerQuizChoice;
    QuizChoiceRemoteModel? questionQuizChoice;
    QuizFillBlankRemoteModel? questionQuizFillBlank;
    QuizFillBlankAnswerRemoteModel? answerQuizFillBlank;
    QuizGroupAnswerRemoteModel? answerQuizGroup;
    QuizGroupRemoteModel? questionQuizGroup;

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
        // Keep parsed choice fields null if decode fails.
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

    return BookHistoryQuizRemoteModel(
      quizType: quizType,
      retry: retry,
      question: question,
      answer: answer,
      explanation: explanation,
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
      'explanation': explanation,
      'answer': answer,
    };
  }
}

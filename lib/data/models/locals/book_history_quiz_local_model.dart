import 'package:epic_story_app/data/models/locals/quiz/history/quiz_fill_blank_answer_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/history/quiz_group_answer_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/quiz_fill_blank_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/quiz_group_local_model.dart';
import 'package:isar_community/isar.dart';

import 'quiz/history/quiz_choice_history_local_model.dart';
import 'quiz/quiz_choice_local_model.dart';

part 'book_history_quiz_local_model.g.dart';

@embedded
class BookHistoryQuizLocalModel {
  final int? quizType;
  final int? retry;
  final String? question;
  final String? answer;
  final String? explanation;
  final QuizChoiceLocalModel? multipleChoiceQuestion;
  final QuizChoiceAnswerLocalModel? multipleChoiceAnswer;
  final QuizFillBlankLocalModel? fillBlankQuestion;
  final QuizFillBlankAnswerLocalModel? fillBlankAnswer;
  final QuizGroupLocalModel? groupQuestion;
  final QuizGroupAnswerLocalModel? groupAnswer;

  const BookHistoryQuizLocalModel({
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
}

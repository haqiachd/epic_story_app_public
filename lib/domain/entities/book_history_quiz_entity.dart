import 'package:epic_story_app/domain/entities/quiz/history/quiz_choice_answer_entity.dart';
import 'package:epic_story_app/domain/entities/quiz/history/quiz_fill_blank_answer_entity.dart';
import 'package:epic_story_app/domain/entities/quiz/history/quiz_group_answer_entity.dart';
import 'package:epic_story_app/domain/entities/quiz/quiz_choice_entity.dart';
import 'package:epic_story_app/domain/entities/quiz/quiz_fill_blank_entity.dart';
import 'package:epic_story_app/domain/entities/quiz/quiz_group_entity.dart';

class BookHistoryQuizEntity {
  final int? quizType;
  final int? retry;
  final String? question;
  final String? answer;
  final String? explanation;
  final QuizChoiceEntity? multipleChoiceQuestion;
  final QuizChoiceAnswerEntity? multipleChoiceAnswer;
  final QuizFillBlankEntity? fillBlankQuestion;
  final QuizFillBlankAnswerEntity? fillBlankAnswer;
  final QuizGroupEntity? groupQuestion;
  final QuizGroupAnswerEntity? groupAnswer;

  const BookHistoryQuizEntity({
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

  BookHistoryQuizEntity copyWith({
    int? quizType,
    int? retry,
    String? question,
    String? answer,
    String? explanation,
    QuizChoiceEntity? multipleChoiceQuestion,
    QuizChoiceAnswerEntity? multipleChoiceAnswer,
    QuizFillBlankEntity? fillBlankQuestion,
    QuizFillBlankAnswerEntity? fillBlankAnswer,
    QuizGroupEntity? groupQuestion,
    QuizGroupAnswerEntity? groupAnswer,
  }) {
    return BookHistoryQuizEntity(
      quizType: quizType ?? this.quizType,
      retry: retry ?? this.retry,
      question: question ?? this.question,
      answer: answer ?? this.answer,
      explanation: explanation ?? this.explanation,
      multipleChoiceQuestion: multipleChoiceQuestion ?? this.multipleChoiceQuestion,
      multipleChoiceAnswer: multipleChoiceAnswer ?? this.multipleChoiceAnswer,
      fillBlankQuestion: fillBlankQuestion ?? this.fillBlankQuestion,
      fillBlankAnswer: fillBlankAnswer ?? this.fillBlankAnswer,
      groupQuestion: groupQuestion ?? this.groupQuestion,
      groupAnswer: groupAnswer ?? this.groupAnswer,
    );
  }
}

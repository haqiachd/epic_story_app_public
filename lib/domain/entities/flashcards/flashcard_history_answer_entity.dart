import 'package:epic_story_app/domain/entities/quiz/history/quiz_choice_answer_entity.dart';
import 'package:epic_story_app/domain/entities/quiz/history/quiz_fill_blank_answer_entity.dart';
import 'package:epic_story_app/domain/entities/quiz/history/quiz_group_answer_entity.dart';
import 'package:epic_story_app/domain/entities/quiz/quiz_choice_entity.dart';
import 'package:epic_story_app/domain/entities/quiz/quiz_fill_blank_entity.dart';
import 'package:epic_story_app/domain/entities/quiz/quiz_group_entity.dart';

class FlashcardHistoryAnswerEntity {
  final int? quizType;
  final int? retry;
  final String? question;
  final String? answer;
  final QuizChoiceEntity? multipleChoiceQuestion;
  final QuizChoiceAnswerEntity? multipleChoiceAnswer;
  final QuizFillBlankEntity? fillBlankQuestion;
  final QuizFillBlankAnswerEntity? fillBlankAnswer;
  final QuizGroupEntity? groupQuestion;
  final QuizGroupAnswerEntity? groupAnswer;

  const FlashcardHistoryAnswerEntity({
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

  FlashcardHistoryAnswerEntity copyWith({
    int? quizType,
    int? retry,
    String? question,
    String? answer,
    QuizChoiceEntity? multipleChoiceQuestion,
    QuizChoiceAnswerEntity? multipleChoiceAnswer,
    QuizFillBlankEntity? fillBlankQuestion,
    QuizFillBlankAnswerEntity? fillBlankAnswer,
    QuizGroupEntity? groupQuestion,
    QuizGroupAnswerEntity? groupAnswer,
    bool forceAnswerNull = false,
  }) {
    return FlashcardHistoryAnswerEntity(
      quizType: quizType ?? this.quizType,
      retry: retry ?? this.retry,
      question: question ?? this.question,
      answer: forceAnswerNull ? null : answer ?? this.answer,
      multipleChoiceQuestion:
          multipleChoiceQuestion ?? this.multipleChoiceQuestion,
      multipleChoiceAnswer: forceAnswerNull
          ? null
          : multipleChoiceAnswer ?? this.multipleChoiceAnswer,
      fillBlankQuestion: fillBlankQuestion ?? this.fillBlankQuestion,
      fillBlankAnswer:
          forceAnswerNull ? null : fillBlankAnswer ?? this.fillBlankAnswer,
      groupQuestion: groupQuestion ?? this.groupQuestion,
      groupAnswer: forceAnswerNull ? null : groupAnswer ?? this.groupAnswer,
    );
  }
}

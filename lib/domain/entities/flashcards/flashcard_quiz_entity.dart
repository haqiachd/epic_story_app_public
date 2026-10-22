import 'package:epic_story_app/domain/entities/quiz/quiz_choice_entity.dart';
import 'package:epic_story_app/domain/entities/quiz/quiz_fill_blank_entity.dart';
import 'package:epic_story_app/domain/entities/quiz/quiz_group_entity.dart';

class FlashcardQuizEntity {
  final int? quizType;
  final String? quizData;
  final String? explanation;
  final QuizChoiceEntity? multipleChoice;
  final QuizFillBlankEntity? fillBlank;
  final QuizGroupEntity? group;

  const FlashcardQuizEntity({
    this.quizType,
    this.quizData,
    this.explanation,
    this.multipleChoice,
    this.fillBlank,
    this.group,
  });

  FlashcardQuizEntity copyWith({
    int? quizType,
    String? quizData,
    String? explanation,
    QuizChoiceEntity? multipleChoice,
    QuizFillBlankEntity? fillBlank,
    QuizGroupEntity? group,
  }) {
    return FlashcardQuizEntity(
      quizType: quizType ?? this.quizType,
      quizData: quizData ?? this.quizData,
      explanation: explanation ?? this.explanation,
      multipleChoice: multipleChoice ?? this.multipleChoice,
      fillBlank: fillBlank ?? this.fillBlank,
      group: group ?? this.group,
    );
  }
}

import 'package:epic_story_app/domain/entities/flashcards/flashcard_quiz_entity.dart';

class FlashcardCardEntity {
  final int? nPage;
  final String? image;
  final String? text;
  final bool? isQuizGenerated;
  final int? quizType;
  final FlashcardQuizEntity? quiz;

  const FlashcardCardEntity({
    this.nPage,
    this.image,
    this.text,
    this.isQuizGenerated,
    this.quizType,
    this.quiz,
  });

  FlashcardCardEntity copyWith({
    int? nPage,
    String? image,
    String? text,
    bool? isQuizGenerated,
    int? quizType,
    FlashcardQuizEntity? quiz,
  }) {
    return FlashcardCardEntity(
      nPage: nPage ?? this.nPage,
      image: image ?? this.image,
      text: text ?? this.text,
      isQuizGenerated: isQuizGenerated ?? this.isQuizGenerated,
      quizType: quizType ?? this.quizType,
      quiz: quiz ?? this.quiz,
    );
  }
}

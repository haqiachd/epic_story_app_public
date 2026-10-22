import 'package:epic_story_app/domain/entities/collections/flashcard_collection_detail_item_entity.dart';

class FlashcardCollectionDetailEntity {
  final String? flashcardId;
  final String? title;
  final String? desc;
  final int? bgColor;
  final List<String>? categories;
  final int? totalFlashcard;
  final int? totalCards;
  final int? totalQuiz;
  final int? completedQuiz;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<FlashCardCollectionDetailItemEntity>? flashcards;

  const FlashcardCollectionDetailEntity({
    this.flashcardId,
    this.title,
    this.desc,
    this.bgColor,
    this.categories,
    this.totalFlashcard,
    this.totalCards,
    this.totalQuiz,
    this.completedQuiz,
    this.createdAt,
    this.updatedAt,
    this.flashcards,
  });

  FlashcardCollectionDetailEntity copyWith({
    String? flashcardId,
    String? title,
    String? desc,
    int? bgColor,
    List<String>? categories,
    int? totalFlashcard,
    int? totalCards,
    int? totalQuiz,
    int? completedQuiz,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<FlashCardCollectionDetailItemEntity>? flashcards,
  }) {
    return FlashcardCollectionDetailEntity(
      flashcardId: flashcardId ?? this.flashcardId,
      title: title ?? this.title,
      desc: desc ?? this.desc,
      bgColor: bgColor ?? this.bgColor,
      categories: categories ?? this.categories,
      totalFlashcard: totalFlashcard ?? this.totalFlashcard,
      totalCards: totalCards ?? this.totalCards,
      totalQuiz: totalQuiz ?? this.totalQuiz,
      completedQuiz: completedQuiz ?? this.completedQuiz,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      flashcards: flashcards ?? this.flashcards,
    );
  }
}

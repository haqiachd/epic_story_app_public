import 'package:epic_story_app/domain/entities/flashcards/flashcard_history_card_entity.dart';

class FlashcardHistoryEntity {
  final String? flashcardId;
  final String? title;
  final String? summary;
  final String? category;
  final int? totalCards;
  final int? totalQuiz;
  final int? completedQuiz;
  final bool? isHaveQuiz;
  final bool? isFinished;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? finishedAt;
  final DateTime? lastReadAt;
  final List<FlashcardHistoryCardEntity>? cards;
  final List<int>? claimedRewards;

  const FlashcardHistoryEntity({
    this.flashcardId,
    this.title,
    this.summary,
    this.category,
    this.totalCards,
    this.totalQuiz,
    this.completedQuiz,
    this.isHaveQuiz,
    this.isFinished,
    this.createdAt,
    this.updatedAt,
    this.finishedAt,
    this.lastReadAt,
    this.cards,
    this.claimedRewards,
  });

  FlashcardHistoryEntity copyWith({
    String? flashcardId,
    String? title,
    String? summary,
    String? category,
    int? totalCards,
    int? totalQuiz,
    int? completedQuiz,
    bool? isHaveQuiz,
    bool? isFinished,
    DateTime? createdAt,
    DateTime? updatedAt,
    DateTime? finishedAt,
    DateTime? lastReadAt,
    List<FlashcardHistoryCardEntity>? cards,
    List<int>? claimedRewards,
  }) {
    return FlashcardHistoryEntity(
      flashcardId: flashcardId ?? this.flashcardId,
      title: title ?? this.title,
      summary: summary ?? this.summary,
      category: category ?? this.category,
      totalCards: totalCards ?? this.totalCards,
      totalQuiz: totalQuiz ?? this.totalQuiz,
      completedQuiz: completedQuiz ?? this.completedQuiz,
      isHaveQuiz: isHaveQuiz ?? this.isHaveQuiz,
      isFinished: isFinished ?? this.isFinished,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      finishedAt: finishedAt ?? this.finishedAt,
      lastReadAt: lastReadAt ?? this.lastReadAt,
      cards: cards ?? this.cards,
      claimedRewards: claimedRewards ?? this.claimedRewards,
    );
  }
}

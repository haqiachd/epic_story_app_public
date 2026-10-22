class FlashCardCollectionDetailItemEntity {
  final String? flashcardId;
  final String? title;
  final String? summary;
  final String? category;
  final int? totalCards;
  final int? totalQuiz;
  final int? completedQuiz;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const FlashCardCollectionDetailItemEntity({
    this.flashcardId,
    this.title,
    this.summary,
    this.category,
    this.totalCards,
    this.totalQuiz,
    this.completedQuiz,
    this.createdAt,
    this.updatedAt,
  });

  FlashCardCollectionDetailItemEntity copyWith({
    String? flashcardId,
    String? title,
    String? summary,
    String? category,
    int? totalCards,
    int? totalQuiz,
    int? completedQuiz,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return FlashCardCollectionDetailItemEntity(
      flashcardId: flashcardId ?? this.flashcardId,
      title: title ?? this.title,
      summary: summary ?? this.summary,
      category: category ?? this.category,
      totalCards: totalCards ?? this.totalCards,
      totalQuiz: totalQuiz ?? this.totalQuiz,
      completedQuiz: completedQuiz ?? this.completedQuiz,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

class FlashCardCollectionEntity {
  final String collectionId;
  final int? bgColor;
  final List<String>? categories;
  final int? completedQuiz;
  final DateTime? createdAt;
  final String? desc;
  final String? title;
  final int? totalCards;
  final int? totalFlashcard;
  final int? totalQuiz;
  final DateTime? updatedAt;

  const FlashCardCollectionEntity({
    required this.collectionId,
    this.bgColor,
    this.categories,
    this.completedQuiz,
    this.createdAt,
    this.desc,
    this.title,
    this.totalCards,
    this.totalFlashcard,
    this.totalQuiz,
    this.updatedAt,
  });

  FlashCardCollectionEntity copyWith({
    String? collectionId,
    int? bgColor,
    List<String>? categories,
    int? completedQuiz,
    DateTime? createdAt,
    String? desc,
    String? title,
    int? totalCards,
    int? totalFlashcard,
    int? totalQuiz,
    DateTime? updatedAt,
  }) {
    return FlashCardCollectionEntity(
      collectionId: collectionId ?? this.collectionId,
      bgColor: bgColor ?? this.bgColor,
      categories: categories ?? this.categories,
      completedQuiz: completedQuiz ?? this.completedQuiz,
      createdAt: createdAt ?? this.createdAt,
      desc: desc ?? this.desc,
      title: title ?? this.title,
      totalCards: totalCards ?? this.totalCards,
      totalFlashcard: totalFlashcard ?? this.totalFlashcard,
      totalQuiz: totalQuiz ?? this.totalQuiz,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

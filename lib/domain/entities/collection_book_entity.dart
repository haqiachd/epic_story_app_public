class CollectionBookEntity {
  final String id;
  final String? title;
  final String? coverUrl;
  final String? category;
  final int? nPages;
  final String? summary;
  final int? totalQuiz;
  final int? completedQuiz;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const CollectionBookEntity({
    required this.id,
    this.title,
    this.coverUrl,
    this.category,
    this.nPages,
    this.summary,
    this.totalQuiz,
    this.completedQuiz,
    this.createdAt,
    this.updatedAt,
  });

  CollectionBookEntity copyWith({
    String? id,
    String? title,
    String? coverUrl,
    String? category,
    int? nPages,
    String? summary,
    int? totalQuiz,
    int? completedQuiz,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return CollectionBookEntity(
      id: id ?? this.id,
      title: title ?? this.title,
      coverUrl: coverUrl ?? this.coverUrl,
      category: category ?? this.category,
      nPages: nPages ?? this.nPages,
      summary: summary ?? this.summary,
      totalQuiz: totalQuiz ?? this.totalQuiz,
      completedQuiz: completedQuiz ?? this.completedQuiz,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

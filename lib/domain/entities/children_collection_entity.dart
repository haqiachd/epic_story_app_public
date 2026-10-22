class ChildrenCollectionEntity {
  final String id;
  final int? bgColor;
  final int? nPages;
  final int? nBooks;
  final String? desc;
  final String? title;
  final List<String>? bookCovers;
  final List<String>? categories;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ChildrenCollectionEntity({
    required this.id,
    this.bgColor,
    this.nPages,
    this.nBooks,
    this.desc,
    this.title,
    this.bookCovers,
    this.categories,
    this.createdAt,
    this.updatedAt,
  });

  ChildrenCollectionEntity copyWith({
    String? id,
    int? bgColor,
    int? nPages,
    int? nBooks,
    List<String>? bookCovers,
    List<String>? categories,
    String? desc,
    String? title,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return ChildrenCollectionEntity(
      id: id ?? this.id,
      bgColor: bgColor ?? this.bgColor,
      nPages: nPages ?? this.nPages,
      nBooks: nBooks ?? this.nBooks,
      bookCovers: bookCovers ?? this.bookCovers,
      categories: categories ?? this.categories,
      desc: desc ?? this.desc,
      title: title ?? this.title,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

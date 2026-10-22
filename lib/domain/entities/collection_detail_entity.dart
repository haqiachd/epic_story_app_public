import 'package:epic_story_app/domain/entities/collection_book_entity.dart';

class CollectionDetailEntity {
  final String id;
  final int? bgColor;
  final int? nPages;
  final String? title;
  final int? nBooks;
  final List<String>? bookCovers;
  final List<String>? categories;
  final String? desc;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<CollectionBookEntity>? books;

  const CollectionDetailEntity({
    required this.id,
    this.bgColor,
    this.nPages,
    this.title,
    this.nBooks,
    this.bookCovers,
    this.categories,
    this.desc,
    this.createdAt,
    this.updatedAt,
    this.books,
  });

  CollectionDetailEntity copyWith({
    String? id,
    int? bgColor,
    int? nPages,
    String? title,
    int? nBooks,
    List<String>? bookCovers,
    List<String>? categories,
    String? desc,
    DateTime? createdAt,
    DateTime? updatedAt,
    List<CollectionBookEntity>? books,
  }) {
    return CollectionDetailEntity(
      id: id ?? this.id,
      bgColor: bgColor ?? this.bgColor,
      nPages: nPages ?? this.nPages,
      title: title ?? this.title,
      nBooks: nBooks ?? this.nBooks,
      bookCovers: bookCovers ?? this.bookCovers,
      categories: categories ?? this.categories,
      desc: desc ?? this.desc,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      books: books ?? this.books,
    );
  }
}

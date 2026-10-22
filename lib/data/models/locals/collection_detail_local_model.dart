import 'package:isar_community/isar.dart';
import 'package:epic_story_app/data/models/locals/collection_book_local_model.dart';

part 'collection_detail_local_model.g.dart';

@embedded
class CollectionDetailLocalModel {
  final String? id;
  final int? bgColor;
  final int? nPages;
  final String? title;
  final int? nBooks;
  final List<String>? bookCovers;
  final List<String>? categories;
  final String? desc;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<CollectionBookLocalModel>? books;

  const CollectionDetailLocalModel({
    this.id,
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
}

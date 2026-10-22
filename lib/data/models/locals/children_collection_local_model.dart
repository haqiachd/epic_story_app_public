import 'package:isar_community/isar.dart';

// Tambahkan baris ini:
part 'children_collection_local_model.g.dart'; 

@embedded
class ChildrenCollectionLocalModel {
  final String? id;
  final int? bgColor;
  final int? nPages;
  final String? title;
  final String? desc;
  final List<String>? bookCovers;
  final List<String>? categories;
  final int? nBooks;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const ChildrenCollectionLocalModel({
    this.id,
    this.bgColor,
    this.nPages,
    this.desc,
    this.bookCovers,
    this.categories,
    this.nBooks,
    this.title,
    this.createdAt,
    this.updatedAt,
  });
}
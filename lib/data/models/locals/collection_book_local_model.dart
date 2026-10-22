import 'package:isar_community/isar.dart';

part 'collection_book_local_model.g.dart';

@embedded
class CollectionBookLocalModel {
  final String? id;
  final String? title;
  final String? coverUrl;
  final String? category;
  final int? nPages;
  final String? summary;
  final int? totalQuiz;
  final int? completedQuiz;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const CollectionBookLocalModel({
    this.id,
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
}

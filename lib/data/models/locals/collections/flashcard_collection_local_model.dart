import 'package:isar_community/isar.dart';

part 'flashcard_collection_local_model.g.dart';

@embedded
class FlashCardCollectionLocalModel {
  final String? collectionId;
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

  FlashCardCollectionLocalModel({
    this.collectionId,
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
}

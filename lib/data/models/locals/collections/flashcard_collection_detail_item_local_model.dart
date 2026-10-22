import 'package:isar_community/isar.dart';

part 'flashcard_collection_detail_item_local_model.g.dart';

@embedded
class FlashCardCollectionDetailItemLocalModel {
  final String? flashcardId;
  final String? title;
  final String? summary;
  final String? category;
  final int? totalCards;
  final int? totalQuiz;
  final int? completedQuiz;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const FlashCardCollectionDetailItemLocalModel({
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
}

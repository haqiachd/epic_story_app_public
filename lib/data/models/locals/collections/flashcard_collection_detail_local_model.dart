import 'package:isar_community/isar.dart';

import 'flashcard_collection_detail_item_local_model.dart';

part 'flashcard_collection_detail_local_model.g.dart';

@Collection()
class FlashCardCollectionDetailLocalModel {
  Id id = Isar.autoIncrement;
  final String? flashcardId;
  final String? title;
  final String? desc;
  final int? bgColor;
  final List<String>? categories;
  final int? totalFlashcard;
  final int? totalCards;
  final int? totalQuiz;
  final int? completedQuiz;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final List<FlashCardCollectionDetailItemLocalModel>? flashcards;

  FlashCardCollectionDetailLocalModel({
    this.flashcardId,
    this.title,
    this.desc,
    this.bgColor,
    this.categories,
    this.totalFlashcard,
    this.totalCards,
    this.totalQuiz,
    this.completedQuiz,
    this.createdAt,
    this.updatedAt,
    this.flashcards,
  });
}

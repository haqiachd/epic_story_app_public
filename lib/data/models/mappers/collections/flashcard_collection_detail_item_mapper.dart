import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/data/models/locals/collections/flashcard_collection_detail_item_local_model.dart';
import 'package:epic_story_app/data/models/remotes/collections/flashcard_collection_detail_item_remote_model.dart';
import 'package:epic_story_app/domain/entities/collections/flashcard_collection_detail_item_entity.dart';

class FlashCardCollecitionDetailItemMapper {
  // Remote -> Entity
  static FlashCardCollectionDetailItemEntity remoteToEntity(
    FlashcardCollectionItemRemoteModel model,
  ) {
    return FlashCardCollectionDetailItemEntity(
      flashcardId: model.flashcardId,
      title: model.title,
      summary: model.summary,
      category: model.category,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      createdAt: model.createdAt?.toDate(),
      updatedAt: model.updatedAt?.toDate(),
    );
  }

  // Remote -> Local
  static FlashCardCollectionDetailItemLocalModel remoteToLocal(
    FlashcardCollectionItemRemoteModel model,
  ) {
    return FlashCardCollectionDetailItemLocalModel(
      flashcardId: model.flashcardId,
      title: model.title,
      summary: model.summary,
      category: model.category,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      createdAt: model.createdAt?.toDate(),
      updatedAt: model.updatedAt?.toDate(),
    );
  }

  // Local -> Remote
  static FlashcardCollectionItemRemoteModel localToRemote(
    FlashCardCollectionDetailItemLocalModel model,
  ) {
    return FlashcardCollectionItemRemoteModel(
      flashcardId: model.flashcardId,
      title: model.title,
      summary: model.summary,
      category: model.category,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      createdAt:
          model.createdAt == null ? null : Timestamp.fromDate(model.createdAt!),
      updatedAt:
          model.updatedAt == null ? null : Timestamp.fromDate(model.updatedAt!),
    );
  }

  // Local -> Entity
  static FlashCardCollectionDetailItemEntity localToEntity(
    FlashCardCollectionDetailItemLocalModel model,
  ) {
    return FlashCardCollectionDetailItemEntity(
      flashcardId: model.flashcardId,
      title: model.title,
      summary: model.summary,
      category: model.category,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  // Entity -> Local
  static FlashCardCollectionDetailItemLocalModel entityToLocal(
    FlashCardCollectionDetailItemEntity entity,
  ) {
    return FlashCardCollectionDetailItemLocalModel(
      flashcardId: entity.flashcardId,
      title: entity.title,
      summary: entity.summary,
      category: entity.category,
      totalCards: entity.totalCards,
      totalQuiz: entity.totalQuiz,
      completedQuiz: entity.completedQuiz,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  // Entity -> Remote
  static FlashcardCollectionItemRemoteModel entityToRemote(
    FlashCardCollectionDetailItemEntity entity,
  ) {
    return FlashcardCollectionItemRemoteModel(
      flashcardId: entity.flashcardId,
      title: entity.title,
      summary: entity.summary,
      category: entity.category,
      totalCards: entity.totalCards,
      totalQuiz: entity.totalQuiz,
      completedQuiz: entity.completedQuiz,
      createdAt: entity.createdAt == null
          ? null
          : Timestamp.fromDate(entity.createdAt!),
      updatedAt: entity.updatedAt == null
          ? null
          : Timestamp.fromDate(entity.updatedAt!),
    );
  }
}

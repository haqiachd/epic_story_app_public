import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/data/models/remotes/collections/flashcard_collection_detail_item_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/collections/flashcard_collection_detail_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/collections/flashcard_collection_remote_model.dart';
import 'package:epic_story_app/domain/entities/collections/flashcard_collection_detail_entity.dart';
import 'package:epic_story_app/domain/entities/collections/flashcard_collection_detail_item_entity.dart';
import 'package:epic_story_app/domain/entities/collections/flashcard_collection_entity.dart';

class FlashcardCollectionMapper {
  static FlashcardCollectionRemoteModel entityToRemote(
    FlashCardCollectionEntity entity,
  ) {
    return FlashcardCollectionRemoteModel(
      collectionId: entity.collectionId,
      bgColor: entity.bgColor,
      categories: entity.categories,
      completedQuiz: entity.completedQuiz,
      desc: entity.desc,
      title: entity.title,
      totalCards: entity.totalCards,
      totalFlashcard: entity.totalFlashcard,
      totalQuiz: entity.totalQuiz,
      createdAt: entity.createdAt != null
          ? Timestamp.fromDate(entity.createdAt!)
          : null,
      updatedAt: entity.updatedAt != null
          ? Timestamp.fromDate(entity.updatedAt!)
          : null,
    );
  }

  static FlashcardCollectionDetailEntity remoteDetailToEntity(
    FlashcardCollectionDetailRemoteModel remote,
  ) {
    return FlashcardCollectionDetailEntity(
      flashcardId: remote.flashcardId,
      title: remote.title,
      desc: remote.desc,
      bgColor: remote.bgColor,
      categories: remote.categories,
      totalFlashcard: remote.totalFlashcard,
      totalCards: remote.totalCards,
      totalQuiz: remote.totalQuiz,
      completedQuiz: remote.completedQuiz,
      createdAt: remote.createdAt?.toDate(),
      updatedAt: remote.updatedAt?.toDate(),
      flashcards: remote.flashcards?.values.map(remoteItemToEntity).toList(),
    );
  }

  static FlashCardCollectionDetailItemEntity remoteItemToEntity(
    FlashcardCollectionItemRemoteModel remote,
  ) {
    return FlashCardCollectionDetailItemEntity(
      flashcardId: remote.flashcardId,
      title: remote.title,
      summary: remote.summary,
      category: remote.category,
      totalCards: remote.totalCards,
      totalQuiz: remote.totalQuiz,
      completedQuiz: remote.completedQuiz,
      createdAt: remote.createdAt?.toDate(),
      updatedAt: remote.updatedAt?.toDate(),
    );
  }
}

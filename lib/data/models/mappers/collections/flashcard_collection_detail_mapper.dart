import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/data/models/locals/collections/flashcard_collection_detail_local_model.dart';
import 'package:epic_story_app/data/models/mappers/collections/flashcard_collection_detail_item_mapper.dart';
import 'package:epic_story_app/data/models/remotes/collections/flashcard_collection_detail_remote_model.dart';
import 'package:epic_story_app/domain/entities/collections/flashcard_collection_detail_entity.dart';

class FlashCardCollecitionDetailMapper {
  // Remote -> Entity
  static FlashcardCollectionDetailEntity remoteToEntity(
    FlashcardCollectionDetailRemoteModel model,
  ) {
    return FlashcardCollectionDetailEntity(
      flashcardId: model.flashcardId,
      title: model.title,
      desc: model.desc,
      bgColor: model.bgColor,
      categories: model.categories,
      totalFlashcard: model.totalFlashcard,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      createdAt: model.createdAt?.toDate(),
      updatedAt: model.updatedAt?.toDate(),
      flashcards: model.flashcards?.values
          .map(FlashCardCollecitionDetailItemMapper.remoteToEntity)
          .toList(),
    );
  }

  // Remote -> Local
  static FlashCardCollectionDetailLocalModel remoteToLocal(
    FlashcardCollectionDetailRemoteModel model,
  ) {
    return FlashCardCollectionDetailLocalModel(
      flashcardId: model.flashcardId,
      title: model.title,
      desc: model.desc,
      bgColor: model.bgColor,
      categories: model.categories,
      totalFlashcard: model.totalFlashcard,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      createdAt: model.createdAt?.toDate(),
      updatedAt: model.updatedAt?.toDate(),
      flashcards: model.flashcards?.values
          .map(FlashCardCollecitionDetailItemMapper.remoteToLocal)
          .toList(),
    );
  }

  // Local -> Remote
  static FlashcardCollectionDetailRemoteModel localToRemote(
    FlashCardCollectionDetailLocalModel model,
  ) {
    return FlashcardCollectionDetailRemoteModel(
      flashcardId: model.flashcardId,
      title: model.title,
      desc: model.desc,
      bgColor: model.bgColor,
      categories: model.categories,
      totalFlashcard: model.totalFlashcard,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      createdAt:
          model.createdAt == null ? null : Timestamp.fromDate(model.createdAt!),
      updatedAt:
          model.updatedAt == null ? null : Timestamp.fromDate(model.updatedAt!),
      flashcards: model.flashcards == null
          ? null
          : {
              for (final item in model.flashcards!)
                item.flashcardId ?? '':
                    FlashCardCollecitionDetailItemMapper.localToRemote(item),
            },
    );
  }

  // Local -> Entity
  static FlashcardCollectionDetailEntity localToEntity(
    FlashCardCollectionDetailLocalModel model,
  ) {
    return FlashcardCollectionDetailEntity(
      flashcardId: model.flashcardId,
      title: model.title,
      desc: model.desc,
      bgColor: model.bgColor,
      categories: model.categories,
      totalFlashcard: model.totalFlashcard,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  // Entity -> Local
  static FlashCardCollectionDetailLocalModel entityToLocal(
    FlashcardCollectionDetailEntity entity,
  ) {
    return FlashCardCollectionDetailLocalModel(
      flashcardId: entity.flashcardId,
      title: entity.title,
      desc: entity.desc,
      bgColor: entity.bgColor,
      categories: entity.categories,
      totalFlashcard: entity.totalFlashcard,
      totalCards: entity.totalCards,
      totalQuiz: entity.totalQuiz,
      completedQuiz: entity.completedQuiz,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  // Entity -> Remote
  static FlashcardCollectionDetailRemoteModel entityToRemote(
    FlashcardCollectionDetailEntity entity,
  ) {
    return FlashcardCollectionDetailRemoteModel(
      flashcardId: entity.flashcardId,
      title: entity.title,
      desc: entity.desc,
      bgColor: entity.bgColor,
      categories: entity.categories,
      totalFlashcard: entity.totalFlashcard,
      totalCards: entity.totalCards,
      totalQuiz: entity.totalQuiz,
      completedQuiz: entity.completedQuiz,
      createdAt: entity.createdAt == null
          ? null
          : Timestamp.fromDate(entity.createdAt!),
      updatedAt: entity.updatedAt == null
          ? null
          : Timestamp.fromDate(entity.updatedAt!),
      flashcards: entity.flashcards == null
          ? null
          : {
              for (final item in entity.flashcards!)
                item.flashcardId ?? '':
                    FlashCardCollecitionDetailItemMapper.entityToRemote(item),
            },
    );
  }
}
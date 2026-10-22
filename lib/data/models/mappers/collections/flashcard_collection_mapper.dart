import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/data/models/locals/collections/flashcard_collection_local_model.dart';
import 'package:epic_story_app/data/models/remotes/collections/flashcard_collection_remote_model.dart';
import 'package:epic_story_app/domain/entities/collections/flashcard_collection_entity.dart';

class FlashCardCollecitionMapper {
  // Remote -> Entity
  static FlashCardCollectionEntity remoteToEntity(
    FlashcardCollectionRemoteModel model,
  ) {
    return FlashCardCollectionEntity(
      collectionId: model.collectionId!,
      bgColor: model.bgColor,
      categories: model.categories,
      completedQuiz: model.completedQuiz,
      createdAt: model.createdAt?.toDate(),
      desc: model.desc,
      title: model.title,
      totalCards: model.totalCards,
      totalFlashcard: model.totalFlashcard,
      totalQuiz: model.totalQuiz,
      updatedAt: model.updatedAt?.toDate(),
    );
  }

  // Remote -> Local
  static FlashCardCollectionLocalModel remoteToLocal(
    FlashcardCollectionRemoteModel model,
  ) {
    return FlashCardCollectionLocalModel(
      collectionId: model.collectionId,
      bgColor: model.bgColor,
      categories: model.categories,
      completedQuiz: model.completedQuiz,
      createdAt: model.createdAt?.toDate(),
      desc: model.desc,
      title: model.title,
      totalCards: model.totalCards,
      totalFlashcard: model.totalFlashcard,
      totalQuiz: model.totalQuiz,
      updatedAt: model.updatedAt?.toDate(),
    );
  }

  // Local -> Remote
  static FlashcardCollectionRemoteModel localToRemote(
    FlashCardCollectionLocalModel model,
  ) {
    return FlashcardCollectionRemoteModel(
      collectionId: model.collectionId,
      bgColor: model.bgColor,
      categories: model.categories,
      completedQuiz: model.completedQuiz,
      createdAt:
          model.createdAt == null ? null : Timestamp.fromDate(model.createdAt!),
      desc: model.desc,
      title: model.title,
      totalCards: model.totalCards,
      totalFlashcard: model.totalFlashcard,
      totalQuiz: model.totalQuiz,
      updatedAt:
          model.updatedAt == null ? null : Timestamp.fromDate(model.updatedAt!),
    );
  }

  // Local -> Entity
  static FlashCardCollectionEntity localToEntity(
    FlashCardCollectionLocalModel model,
  ) {
    return FlashCardCollectionEntity(
      collectionId: model.collectionId!,
      bgColor: model.bgColor,
      categories: model.categories,
      completedQuiz: model.completedQuiz,
      createdAt: model.createdAt,
      desc: model.desc,
      title: model.title,
      totalCards: model.totalCards,
      totalFlashcard: model.totalFlashcard,
      totalQuiz: model.totalQuiz,
      updatedAt: model.updatedAt,
    );
  }

  // Entity -> Local
  static FlashCardCollectionLocalModel entityToLocal(
    FlashCardCollectionEntity entity,
  ) {
    return FlashCardCollectionLocalModel(
      collectionId: entity.collectionId,
      bgColor: entity.bgColor,
      categories: entity.categories,
      completedQuiz: entity.completedQuiz,
      createdAt: entity.createdAt,
      desc: entity.desc,
      title: entity.title,
      totalCards: entity.totalCards,
      totalFlashcard: entity.totalFlashcard,
      totalQuiz: entity.totalQuiz,
      updatedAt: entity.updatedAt,
    );
  }

  // Entity -> Remote
  static FlashcardCollectionRemoteModel entityToRemote(
    FlashCardCollectionEntity entity,
  ) {
    return FlashcardCollectionRemoteModel(
      collectionId: entity.collectionId,
      bgColor: entity.bgColor,
      categories: entity.categories,
      completedQuiz: entity.completedQuiz,
      createdAt: entity.createdAt == null
          ? null
          : Timestamp.fromDate(entity.createdAt!),
      desc: entity.desc,
      title: entity.title,
      totalCards: entity.totalCards,
      totalFlashcard: entity.totalFlashcard,
      totalQuiz: entity.totalQuiz,
      updatedAt: entity.updatedAt == null
          ? null
          : Timestamp.fromDate(entity.updatedAt!),
    );
  }

  // List helpers
  static List<FlashCardCollectionEntity> remoteListToEntityList(
    List<FlashcardCollectionRemoteModel> list,
  ) =>
      list.map(remoteToEntity).toList();

  static List<FlashCardCollectionLocalModel> remoteListToLocalList(
    List<FlashcardCollectionRemoteModel> list,
  ) =>
      list.map(remoteToLocal).toList();

  static List<FlashcardCollectionRemoteModel> localListToRemoteList(
    List<FlashCardCollectionLocalModel> list,
  ) =>
      list.map(localToRemote).toList();

  static List<FlashCardCollectionEntity> localListToEntityList(
    List<FlashCardCollectionLocalModel> list,
  ) =>
      list.map(localToEntity).toList();

  static List<FlashCardCollectionLocalModel> entityListToLocalList(
    List<FlashCardCollectionEntity> list,
  ) =>
      list.map(entityToLocal).toList();

  static List<FlashcardCollectionRemoteModel> entityListToRemoteList(
    List<FlashCardCollectionEntity> list,
  ) =>
      list.map(entityToRemote).toList();
}

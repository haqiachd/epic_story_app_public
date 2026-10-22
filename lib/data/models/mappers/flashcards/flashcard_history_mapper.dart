import 'package:epic_story_app/core/utils/timestamp_converter.dart';
import 'package:epic_story_app/data/models/locals/flashcards/flashcard_history_local_model.dart';
import 'package:epic_story_app/data/models/mappers/flashcards/flashcard_history_card_mapper.dart';
import 'package:epic_story_app/data/models/remotes/flashcards/flashcard_history_remote_model.dart';
import 'package:epic_story_app/domain/entities/flashcards/flashcard_history_entity.dart';

class FlashcardHistoryMapper {
  // Remote -> Entity
  static FlashcardHistoryEntity remoteToEntity(
    FlashcardHistoryRemoteModel model,
  ) {
    return FlashcardHistoryEntity(
      flashcardId: model.flashcardId,
      title: model.title,
      summary: model.summary,
      category: model.category,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      isHaveQuiz: model.isHaveQuiz,
      isFinished: model.isFinished,
      createdAt: TimestampConverter.toDateTime(model.createdAt),
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
      finishedAt: TimestampConverter.toDateTime(model.finishedAt),
      lastReadAt: TimestampConverter.toDateTime(model.lastReadAt),
      cards:
          model.cards?.map(FlashcardHistoryCardMapper.remoteToEntity).toList(),
      claimedRewards: model.claimedRewards,
    );
  }

  // Remote -> Local
  static FlashcardHistoryLocalModel remoteToLocal(
    FlashcardHistoryRemoteModel model,
  ) {
    return FlashcardHistoryLocalModel(
      flashcardId: model.flashcardId,
      title: model.title,
      summary: model.summary,
      category: model.category,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      isHaveQuiz: model.isHaveQuiz,
      isFinished: model.isFinished,
      createdAt: TimestampConverter.toDateTime(model.createdAt),
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
      finishedAt: TimestampConverter.toDateTime(model.finishedAt),
      lastReadAt: TimestampConverter.toDateTime(model.lastReadAt),
      cards:
          model.cards?.map(FlashcardHistoryCardMapper.remoteToLocal).toList(),
      claimedRewards: model.claimedRewards,    
    );
  }

  // Local -> Remote
  static FlashcardHistoryRemoteModel localToRemote(
    FlashcardHistoryLocalModel model,
  ) {
    return FlashcardHistoryRemoteModel(
      flashcardId: model.flashcardId,
      title: model.title,
      summary: model.summary,
      category: model.category,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      isHaveQuiz: model.isHaveQuiz,
      isFinished: model.isFinished,
      createdAt: TimestampConverter.fromDateTime(model.createdAt),
      updatedAt: TimestampConverter.fromDateTime(model.updatedAt),
      finishedAt: TimestampConverter.fromDateTime(model.finishedAt),
      lastReadAt: TimestampConverter.fromDateTime(model.lastReadAt),
      cards:
          model.cards?.map(FlashcardHistoryCardMapper.localToRemote).toList(),
      claimedRewards: model.claimedRewards,    
    );
  }

  // Local -> Entity
  static FlashcardHistoryEntity localToEntity(
    FlashcardHistoryLocalModel model,
  ) {
    return FlashcardHistoryEntity(
      flashcardId: model.flashcardId,
      title: model.title,
      summary: model.summary,
      category: model.category,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      isHaveQuiz: model.isHaveQuiz,
      isFinished: model.isFinished,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      finishedAt: model.finishedAt,
      lastReadAt: model.lastReadAt,
      cards:
          model.cards?.map(FlashcardHistoryCardMapper.localToEntity).toList(),
      claimedRewards: model.claimedRewards,    
    );
  }

  // Entity -> Local
  static FlashcardHistoryLocalModel entityToLocal(
    FlashcardHistoryEntity entity,
  ) {
    return FlashcardHistoryLocalModel(
      flashcardId: entity.flashcardId,
      title: entity.title,
      summary: entity.summary,
      category: entity.category,
      totalCards: entity.totalCards,
      totalQuiz: entity.totalQuiz,
      completedQuiz: entity.completedQuiz,
      isHaveQuiz: entity.isHaveQuiz,
      isFinished: entity.isFinished,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      finishedAt: entity.finishedAt,
      lastReadAt: entity.lastReadAt,
      cards:
          entity.cards?.map(FlashcardHistoryCardMapper.entityToLocal).toList(),
      claimedRewards: entity.claimedRewards,    
    );
  }

  // Entity -> Remote
  static FlashcardHistoryRemoteModel entityToRemote(
    FlashcardHistoryEntity entity,
  ) {
    return FlashcardHistoryRemoteModel(
      flashcardId: entity.flashcardId,
      title: entity.title,
      summary: entity.summary,
      category: entity.category,
      totalCards: entity.totalCards,
      totalQuiz: entity.totalQuiz,
      completedQuiz: entity.completedQuiz,
      isHaveQuiz: entity.isHaveQuiz,
      isFinished: entity.isFinished,
      createdAt: TimestampConverter.fromDateTime(entity.createdAt),
      updatedAt: TimestampConverter.fromDateTime(entity.updatedAt),
      finishedAt: TimestampConverter.fromDateTime(entity.finishedAt),
      lastReadAt: TimestampConverter.fromDateTime(entity.lastReadAt),
      cards:
          entity.cards?.map(FlashcardHistoryCardMapper.entityToRemote).toList(),
      claimedRewards: entity.claimedRewards,    
    );
  }

  // List helpers
  static List<FlashcardHistoryEntity> remoteListToEntityList(
    List<FlashcardHistoryRemoteModel> list,
  ) =>
      list.map(remoteToEntity).toList();

  static List<FlashcardHistoryLocalModel> remoteListToLocalList(
    List<FlashcardHistoryRemoteModel> list,
  ) =>
      list.map(remoteToLocal).toList();

  static List<FlashcardHistoryRemoteModel> localListToRemoteList(
    List<FlashcardHistoryLocalModel> list,
  ) =>
      list.map(localToRemote).toList();

  static List<FlashcardHistoryEntity> localListToEntityList(
    List<FlashcardHistoryLocalModel> list,
  ) =>
      list.map(localToEntity).toList();

  static List<FlashcardHistoryLocalModel> entityListToLocalList(
    List<FlashcardHistoryEntity> list,
  ) =>
      list.map(entityToLocal).toList();

  static List<FlashcardHistoryRemoteModel> entityListToRemoteList(
    List<FlashcardHistoryEntity> list,
  ) =>
      list.map(entityToRemote).toList();
}

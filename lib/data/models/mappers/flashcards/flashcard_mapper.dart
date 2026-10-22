import 'package:epic_story_app/core/utils/timestamp_converter.dart';
import 'package:epic_story_app/data/models/locals/book_reaction_local_model.dart';
import 'package:epic_story_app/data/models/locals/flashcards/flashcard_local_model.dart';
import 'package:epic_story_app/data/models/mappers/flashcards/flashcard_card_mapper.dart';
import 'package:epic_story_app/data/models/remotes/book_reaction_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/flashcards/flashcard_remote_model.dart';
import 'package:epic_story_app/domain/entities/book_reaction_enttiy.dart';
import 'package:epic_story_app/domain/entities/flashcards/flashcard_entity.dart';

class FlashCardMapper {
  // Remote -> Entity
  static FlashcardEntity remoteToEntity(FlashcardRemoteModel model) {
    return FlashcardEntity(
      flashcardId: model.flashcardId,
      title: model.title,
      summary: model.summary,
      category: model.category,
      grades: model.grades,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      reads: model.reads,
      isHaveQuiz: model.isHaveQuiz,
      isGenerateQuizSupported: model.isGenerateQuizSupported,
      createdAt: TimestampConverter.toDateTime(model.createdAt),
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
      reactions: _reactionRemoteToEntity(model.reactions),
      cards: model.cards?.map(FlashCardCardMapper.remoteToEntity).toList(),
      rewards: model.rewards,
    );
  }

  // Remote -> Local
  static FlashcardLocalModel remoteToLocal(FlashcardRemoteModel model) {
    return FlashcardLocalModel(
      flashcardId: model.flashcardId,
      title: model.title,
      summary: model.summary,
      category: model.category,
      grades: model.grades,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      reads: model.reads,
      isHaveQuiz: model.isHaveQuiz,
      isGenerateQuizSupported: model.isGenerateQuizSupported,
      createdAt: TimestampConverter.toDateTime(model.createdAt),
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
      reactions: _reactionRemoteToLocal(model.reactions),
      cards: model.cards?.map(FlashCardCardMapper.remoteToLocal).toList(),
      rewards: model.rewards,
    );
  }

  // Local -> Remote
  static FlashcardRemoteModel localToRemote(FlashcardLocalModel model) {
    return FlashcardRemoteModel(
      flashcardId: model.flashcardId,
      title: model.title,
      summary: model.summary,
      category: model.category,
      grades: model.grades,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      reads: model.reads,
      isHaveQuiz: model.isHaveQuiz,
      isGenerateQuizSupported: model.isGenerateQuizSupported,
      createdAt: TimestampConverter.fromDateTime(model.createdAt),
      updatedAt: TimestampConverter.fromDateTime(model.updatedAt),
      reactions: _reactionLocalToRemote(model.reactions),
      cards: model.cards?.map(FlashCardCardMapper.localToRemote).toList(),
      rewards: model.rewards,
    );
  }

  // Local -> Entity
  static FlashcardEntity localToEntity(FlashcardLocalModel model) {
    return FlashcardEntity(
      flashcardId: model.flashcardId,
      title: model.title,
      summary: model.summary,
      category: model.category,
      grades: model.grades,
      totalCards: model.totalCards,
      totalQuiz: model.totalQuiz,
      reads: model.reads,
      isHaveQuiz: model.isHaveQuiz,
      isGenerateQuizSupported: model.isGenerateQuizSupported,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      reactions: _reactionLocalToEntity(model.reactions),
      cards: model.cards?.map(FlashCardCardMapper.localToEntity).toList(),
      rewards: model.rewards,
    );
  }

  // Entity -> Local
  static FlashcardLocalModel entityToLocal(FlashcardEntity entity) {
    return FlashcardLocalModel(
      flashcardId: entity.flashcardId,
      title: entity.title,
      summary: entity.summary,
      category: entity.category,
      grades: entity.grades,
      totalCards: entity.totalCards,
      totalQuiz: entity.totalQuiz,
      reads: entity.reads,
      isHaveQuiz: entity.isHaveQuiz,
      isGenerateQuizSupported: entity.isGenerateQuizSupported,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      reactions: _reactionEntityToLocal(entity.reactions),
      cards: entity.cards?.map(FlashCardCardMapper.entityToLocal).toList(),
      rewards: entity.rewards,
    );
  }

  // Entity -> Remote
  static FlashcardRemoteModel entityToRemote(FlashcardEntity entity) {
    return FlashcardRemoteModel(
      flashcardId: entity.flashcardId,
      title: entity.title,
      summary: entity.summary,
      category: entity.category,
      grades: entity.grades,
      totalCards: entity.totalCards,
      totalQuiz: entity.totalQuiz,
      reads: entity.reads,
      isHaveQuiz: entity.isHaveQuiz,
      isGenerateQuizSupported: entity.isGenerateQuizSupported,
      createdAt: TimestampConverter.fromDateTime(entity.createdAt),
      updatedAt: TimestampConverter.fromDateTime(entity.updatedAt),
      reactions: _reactionEntityToRemote(entity.reactions),
      cards: entity.cards?.map(FlashCardCardMapper.entityToRemote).toList(),
      rewards: entity.rewards,
    );
  }

  // List helpers
  static List<FlashcardEntity> remteListToEntityList(
    List<FlashcardRemoteModel> list,
  ) =>
      list.map(remoteToEntity).toList();

  static List<FlashcardEntity> remoteListToEntityList(
    List<FlashcardRemoteModel> list,
  ) =>
      list.map(remoteToEntity).toList();

  static List<FlashcardLocalModel> remoteListToLocalList(
    List<FlashcardRemoteModel> list,
  ) =>
      list.map(remoteToLocal).toList();

  static List<FlashcardRemoteModel> localListToRemoteList(
    List<FlashcardLocalModel> list,
  ) =>
      list.map(localToRemote).toList();

  static List<FlashcardEntity> localListToEntityList(
    List<FlashcardLocalModel> list,
  ) =>
      list.map(localToEntity).toList();

  static List<FlashcardLocalModel> entityListToLocalList(
    List<FlashcardEntity> list,
  ) =>
      list.map(entityToLocal).toList();

  static List<FlashcardRemoteModel> entityListToRemoteList(
    List<FlashcardEntity> list,
  ) =>
      list.map(entityToRemote).toList();

  static BookReactionEntity? _reactionRemoteToEntity(
    BookReactionRemoteModel? model,
  ) {
    if (model == null) return null;
    return BookReactionEntity(
      clappingHand: model.clappingHand,
      heart: model.heart,
      laughing: model.laughing,
      lightBulb: model.lightBulb,
    );
  }

  static BookReactionLocalModel? _reactionRemoteToLocal(
    BookReactionRemoteModel? model,
  ) {
    if (model == null) return null;
    return BookReactionLocalModel(
      clappingHand: model.clappingHand,
      heart: model.heart,
      laughing: model.laughing,
      lightBulb: model.lightBulb,
    );
  }

  static BookReactionRemoteModel? _reactionLocalToRemote(
    BookReactionLocalModel? model,
  ) {
    if (model == null) return null;
    return BookReactionRemoteModel(
      clappingHand: model.clappingHand,
      heart: model.heart,
      laughing: model.laughing,
      lightBulb: model.lightBulb,
    );
  }

  static BookReactionEntity? _reactionLocalToEntity(
    BookReactionLocalModel? model,
  ) {
    if (model == null) return null;
    return BookReactionEntity(
      clappingHand: model.clappingHand,
      heart: model.heart,
      laughing: model.laughing,
      lightBulb: model.lightBulb,
    );
  }

  static BookReactionLocalModel? _reactionEntityToLocal(
    BookReactionEntity? entity,
  ) {
    if (entity == null) return null;
    return BookReactionLocalModel(
      clappingHand: entity.clappingHand,
      heart: entity.heart,
      laughing: entity.laughing,
      lightBulb: entity.lightBulb,
    );
  }

  static BookReactionRemoteModel? _reactionEntityToRemote(
    BookReactionEntity? entity,
  ) {
    if (entity == null) return null;
    return BookReactionRemoteModel(
      clappingHand: entity.clappingHand,
      heart: entity.heart,
      laughing: entity.laughing,
      lightBulb: entity.lightBulb,
    );
  }
}

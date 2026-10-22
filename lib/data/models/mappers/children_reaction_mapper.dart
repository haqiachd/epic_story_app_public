import 'package:epic_story_app/core/utils/timestamp_converter.dart';
import 'package:epic_story_app/data/models/locals/children_reaction_local_model.dart';
import 'package:epic_story_app/data/models/remotes/children_reaction_remote_model.dart';
import 'package:epic_story_app/domain/entities/children_reaction_entity.dart';

class ChildrenReactionMapper {
  // Entity -> Local
  static ChildrenReactionLocalModel entityToLocal(
    ChildrenReactionEntity entity,
  ) {
    return ChildrenReactionLocalModel(
      bookId: entity.bookId,
      clappingHand: entity.clappingHand,
      heart: entity.heart,
      laughing: entity.laughing,
      lightBulb: entity.lightBulb,
      updatedAt: entity.updatedAt,
    );
  }

  // Entity -> Remote
  static ChildrenReactionRemoteModel entityToRemote(
    ChildrenReactionEntity entity,
  ) {
    return ChildrenReactionRemoteModel(
      bookId: entity.bookId,
      clappingHand: entity.clappingHand,
      heart: entity.heart,
      laughing: entity.laughing,
      lightBulb: entity.lightBulb,
      updatedAt: TimestampConverter.fromDateTime(entity.updatedAt),
    );
  }

  // Local -> Entity
  static ChildrenReactionEntity localToEntity(
    ChildrenReactionLocalModel model,
  ) {
    return ChildrenReactionEntity(
      bookId: model.bookId,
      clappingHand: model.clappingHand,
      heart: model.heart,
      laughing: model.laughing,
      lightBulb: model.lightBulb,
      updatedAt: model.updatedAt,
    );
  }

  // Local -> Remote
  static ChildrenReactionRemoteModel localToRemote(
    ChildrenReactionLocalModel model,
  ) {
    return ChildrenReactionRemoteModel(
      bookId: model.bookId,
      clappingHand: model.clappingHand,
      heart: model.heart,
      laughing: model.laughing,
      lightBulb: model.lightBulb,
      updatedAt: TimestampConverter.fromDateTime(model.updatedAt),
    );
  }

  // Remote -> Entity
  static ChildrenReactionEntity remoteToEntity(
    ChildrenReactionRemoteModel model,
  ) {
    return ChildrenReactionEntity(
      bookId: model.bookId,
      clappingHand: model.clappingHand,
      heart: model.heart,
      laughing: model.laughing,
      lightBulb: model.lightBulb,
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
    );
  }

  // Remote -> Local
  static ChildrenReactionLocalModel remoteToLocal(
    ChildrenReactionRemoteModel model,
  ) {
    return ChildrenReactionLocalModel(
      bookId: model.bookId,
      clappingHand: model.clappingHand,
      heart: model.heart,
      laughing: model.laughing,
      lightBulb: model.lightBulb,
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
    );
  }

  // List helpers
  static List<ChildrenReactionLocalModel> entityListToLocalList(
    List<ChildrenReactionEntity> list,
  ) =>
      list.map(entityToLocal).toList();

  static List<ChildrenReactionRemoteModel> entityListToRemoteList(
    List<ChildrenReactionEntity> list,
  ) =>
      list.map(entityToRemote).toList();

  static List<ChildrenReactionEntity> localListToEntityList(
    List<ChildrenReactionLocalModel> list,
  ) =>
      list.map(localToEntity).toList();

  static List<ChildrenReactionRemoteModel> localListToRemoteList(
    List<ChildrenReactionLocalModel> list,
  ) =>
      list.map(localToRemote).toList();

  static List<ChildrenReactionLocalModel> remoteListToLocalList(
    List<ChildrenReactionRemoteModel> list,
  ) =>
      list.map(remoteToLocal).toList();

  static List<ChildrenReactionEntity> remoteListToEntityList(
    List<ChildrenReactionRemoteModel> list,
  ) =>
      list.map(remoteToEntity).toList();
}

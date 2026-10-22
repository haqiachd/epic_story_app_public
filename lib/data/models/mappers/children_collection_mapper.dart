import 'package:epic_story_app/core/utils/timestamp_converter.dart';
import 'package:epic_story_app/data/models/locals/children_collection_local_model.dart';
import 'package:epic_story_app/data/models/remotes/children_collection_remote_model.dart';
import 'package:epic_story_app/domain/entities/children_collection_entity.dart';

class ChildrenCollectionMapper {
  // Entity -> Local
  static ChildrenCollectionLocalModel entityToLocal(
    ChildrenCollectionEntity entity,
  ) {
    return ChildrenCollectionLocalModel(
      id: entity.id,
      bgColor: entity.bgColor,
      nPages: entity.nPages,
      title: entity.title,
      desc: entity.desc,
      bookCovers: entity.bookCovers,
      categories: entity.categories,
      nBooks: entity.nBooks,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  // Entity -> Remote
  static ChildrenCollectionRemoteModel entityToRemote(
    ChildrenCollectionEntity entity,
  ) {
    return ChildrenCollectionRemoteModel(
      id: entity.id,
      bgColor: entity.bgColor,
      nPages: entity.nPages,
      title: entity.title,
      desc: entity.desc,
      bookCovers: entity.bookCovers,
      categories: entity.categories,
      nBooks: entity.nBooks,
      createdAt: TimestampConverter.fromDateTime(entity.createdAt),
      updatedAt: TimestampConverter.fromDateTime(entity.updatedAt),
    );
  }

  // Local -> Entity
  static ChildrenCollectionEntity localToEntity(
    ChildrenCollectionLocalModel model,
  ) {
    return ChildrenCollectionEntity(
      id: model.id ?? '',
      bgColor: model.bgColor,
      nPages: model.nPages,
      title: model.title,
      desc: model.desc,
      bookCovers: model.bookCovers,
      categories: model.categories,
      nBooks: model.nBooks,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  // Local -> Remote
  static ChildrenCollectionRemoteModel localToRemote(
    ChildrenCollectionLocalModel model,
  ) {
    return ChildrenCollectionRemoteModel(
      id: model.id,
      bgColor: model.bgColor,
      nPages: model.nPages,
      title: model.title,
      desc: model.desc,
      bookCovers: model.bookCovers,
      categories: model.categories,
      nBooks: model.nBooks,
      createdAt: TimestampConverter.fromDateTime(model.createdAt),
      updatedAt: TimestampConverter.fromDateTime(model.updatedAt),
    );
  }

  // Remote -> Entity
  static ChildrenCollectionEntity remoteToEntity(
    ChildrenCollectionRemoteModel model,
  ) {
    return ChildrenCollectionEntity(
      id: model.id ?? '',
      bgColor: model.bgColor,
      nPages: model.nPages,
      title: model.title,
      desc: model.desc,
      bookCovers: model.bookCovers,
      categories: model.categories,
      nBooks: model.nBooks,
      createdAt: TimestampConverter.toDateTime(model.createdAt),
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
    );
  }

  // Remote -> Local
  static ChildrenCollectionLocalModel remoteToLocal(
    ChildrenCollectionRemoteModel model,
  ) {
    return ChildrenCollectionLocalModel(
      id: model.id,
      bgColor: model.bgColor,
      nPages: model.nPages,
      title: model.title,
      desc: model.desc,
      bookCovers: model.bookCovers,
      categories: model.categories,
      nBooks: model.nBooks,
      createdAt: TimestampConverter.toDateTime(model.createdAt),
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
    );
  }

  // List helpers
  static List<ChildrenCollectionLocalModel> entityListToLocalList(
    List<ChildrenCollectionEntity> list,
  ) =>
      list.map(entityToLocal).toList();

  static List<ChildrenCollectionRemoteModel> entityListToRemoteList(
    List<ChildrenCollectionEntity> list,
  ) =>
      list.map(entityToRemote).toList();

  static List<ChildrenCollectionEntity> localListToEntityList(
    List<ChildrenCollectionLocalModel> list,
  ) =>
      list.map(localToEntity).toList();

  static List<ChildrenCollectionRemoteModel> localListToRemoteList(
    List<ChildrenCollectionLocalModel> list,
  ) =>
      list.map(localToRemote).toList();

  static List<ChildrenCollectionLocalModel> remoteListToLocalList(
    List<ChildrenCollectionRemoteModel> list,
  ) =>
      list.map(remoteToLocal).toList();

  static List<ChildrenCollectionEntity> remoteListToEntityList(
    List<ChildrenCollectionRemoteModel> list,
  ) =>
      list.map(remoteToEntity).toList();
}

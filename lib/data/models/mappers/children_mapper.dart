import 'package:epic_story_app/core/utils/timestamp_converter.dart';
import 'package:epic_story_app/data/models/locals/children_local_model.dart';
import 'package:epic_story_app/data/models/mappers/collections/flashcard_collection_mapper.dart';
import 'package:epic_story_app/data/models/remotes/children_remote_model.dart';
import 'package:epic_story_app/data/models/mappers/children_collection_mapper.dart';
import 'package:epic_story_app/domain/entities/children_entity.dart';

class ChildrenMapper {
  // Convert ChildrenEntity to ChildrenLocalModel
  static ChildrenLocalModel entityToLocal(ChildrenEntity entity) {
    return ChildrenLocalModel(
      collections: entity.collections
          ?.map(
            (item) => ChildrenCollectionMapper.entityToLocal(item),
          )
          .toList(),
      flashcardCollections: entity.flashcardCollections
          ?.map(
            (item) => FlashCardCollecitionMapper.entityToLocal(item),
          )
          .toList(),
      email: entity.email,
      fullName: entity.fullName,
      photoPicture: entity.photoPicture,
      gradeClass: entity.gradeClass,
      gender: entity.gender,
      dateBirth: entity.dateBirth,
      lastSignInAt: entity.lastSignInAt,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  // Convert ChildrenLocalModel to ChildrenEntity
  static ChildrenEntity localToEntity(ChildrenLocalModel model) {
    return ChildrenEntity(
      collections: model.collections
          ?.map(
            (item) => ChildrenCollectionMapper.localToEntity(item),
          )
          .toList(),
      flashcardCollections: model.flashcardCollections
          ?.map(
            (item) => FlashCardCollecitionMapper.localToEntity(item),
          )
          .toList(),
      email: model.email ?? '',
      fullName: model.fullName ?? '',
      photoPicture: model.photoPicture ?? '',
      gradeClass: model.gradeClass ?? 0,
      gender: model.gender ?? '',
      dateBirth: model.dateBirth ?? DateTime.now(),
      lastSignInAt: model.lastSignInAt ?? DateTime.now(),
      createdAt: model.createdAt ?? DateTime.now(),
      updatedAt: model.updatedAt ?? DateTime.now(),
    );
  }

  // Convert ChildrenEntity to ChildrenRemoteModel
  static ChildrenRemoteModel entityToRemote(ChildrenEntity entity) {
    return ChildrenRemoteModel(
      collections: entity.collections?.asMap().map((index, item) {
        return MapEntry(
          item.id,
          ChildrenCollectionMapper.entityToRemote(item),
        );
      }),
      flashcardCollections:
          entity.flashcardCollections?.asMap().map((index, item) {
        return MapEntry(
          item.collectionId,
          FlashCardCollecitionMapper.entityToRemote(item),
        );
      }),
      email: entity.email,
      fullName: entity.fullName,
      photoPicture: entity.photoPicture,
      gradeClass: entity.gradeClass,
      gender: entity.gender,
      dateBirth: TimestampConverter.fromDateTime(entity.dateBirth),
      lastSignInAt: TimestampConverter.fromDateTime(entity.lastSignInAt),
      createdAt: TimestampConverter.fromDateTime(entity.createdAt),
      updatedAt: TimestampConverter.fromDateTime(entity.updatedAt),
    );
  }

  // Convert ChildrenRemoteModel to ChildrenEntity
  static ChildrenEntity remoteToEntity(ChildrenRemoteModel model) {
    return ChildrenEntity(
      collections: model.collections?.entries
          .map(
            (entry) => ChildrenCollectionMapper.remoteToEntity(
              entry.value.copyWith(id: entry.key),
            ),
          )
          .toList(),
      flashcardCollections: model.flashcardCollections?.entries
          .map(
            (entry) => FlashCardCollecitionMapper.remoteToEntity(
              entry.value.copyWith(collectionId: entry.key),
            ),
          )
          .toList(),
      email: model.email ?? '',
      fullName: model.fullName ?? '',
      photoPicture: model.photoPicture ?? '',
      gradeClass: model.gradeClass ?? 0,
      gender: model.gender ?? '',
      dateBirth: TimestampConverter.toDateTime(model.dateBirth),
      lastSignInAt: TimestampConverter.toDateTime(model.lastSignInAt),
      createdAt: TimestampConverter.toDateTime(model.createdAt),
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
    );
  }

  // Convert ChildrenRemoteModel to ChildrenLocalModel
  static ChildrenLocalModel remoteToLocal(ChildrenRemoteModel model) {
    return ChildrenLocalModel(
      collections: model.collections?.entries
          .map(
            (entry) => ChildrenCollectionMapper.remoteToLocal(
              entry.value.copyWith(id: entry.key),
            ),
          )
          .toList(),
      flashcardCollections: model.flashcardCollections?.entries
          .map(
            (entry) => FlashCardCollecitionMapper.remoteToLocal(
              entry.value.copyWith(collectionId: entry.key),
            ),
          )
          .toList(),
      email: model.email,
      fullName: model.fullName,
      photoPicture: model.photoPicture,
      gradeClass: model.gradeClass,
      gender: model.gender,
      dateBirth: TimestampConverter.toDateTime(model.dateBirth),
      lastSignInAt: TimestampConverter.toDateTime(model.lastSignInAt),
      createdAt: TimestampConverter.toDateTime(model.createdAt),
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
    );
  }

  // Convert ChildrenLocalModel to ChildrenRemoteModel
  static ChildrenRemoteModel localToRemote(ChildrenLocalModel model) {
    return ChildrenRemoteModel(
      collections: model.collections?.asMap().map((index, item) {
        return MapEntry(
          item.id ?? index.toString(),
          ChildrenCollectionMapper.localToRemote(item),
        );
      }),
      flashcardCollections:
          model.flashcardCollections?.asMap().map((index, item) {
        return MapEntry(
          item.collectionId ?? index.toString(),
          FlashCardCollecitionMapper.localToRemote(item),
        );
      }),
      email: model.email,
      fullName: model.fullName,
      photoPicture: model.photoPicture,
      gradeClass: model.gradeClass,
      gender: model.gender,
      dateBirth: TimestampConverter.fromDateTime(model.dateBirth),
      lastSignInAt: TimestampConverter.fromDateTime(model.lastSignInAt),
      createdAt: TimestampConverter.fromDateTime(model.createdAt),
      updatedAt: TimestampConverter.fromDateTime(model.updatedAt),
    );
  }

  // ===== LIST CONVERTERS =====

  // Entity List -> Local List
  static List<ChildrenLocalModel> entityListToLocal(
    List<ChildrenEntity> entities,
  ) {
    return entities.map(entityToLocal).toList();
  }

  // Local List -> Entity List
  static List<ChildrenEntity> localListToEntity(
    List<ChildrenLocalModel> models,
  ) {
    return models.map(localToEntity).toList();
  }

  // Entity List -> Remote List
  static List<ChildrenRemoteModel> entityListToRemote(
    List<ChildrenEntity> entities,
  ) {
    return entities.map(entityToRemote).toList();
  }

  // Remote List -> Entity List
  static List<ChildrenEntity> remoteListToEntity(
    List<ChildrenRemoteModel> models,
  ) {
    return models.map(remoteToEntity).toList();
  }

  // Remote List -> Local List
  static List<ChildrenLocalModel> remoteListToLocal(
    List<ChildrenRemoteModel> models,
  ) {
    return models.map(remoteToLocal).toList();
  }

  // Local List -> Remote List
  static List<ChildrenRemoteModel> localListToRemote(
    List<ChildrenLocalModel> models,
  ) {
    return models.map(localToRemote).toList();
  }
}

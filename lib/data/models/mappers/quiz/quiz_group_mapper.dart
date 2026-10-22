import 'package:epic_story_app/data/models/locals/quiz/quiz_group_local_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/quiz_group_remote_model.dart';
import 'package:epic_story_app/domain/entities/quiz/quiz_group_entity.dart';

class QuizGroupMapper {
  static QuizGroupLocalModel remoteToLocal(QuizGroupRemoteModel model) {
    return QuizGroupLocalModel(
      groups: model.groups
          ?.map((item) => QuizGroupItemLocalModel(
                id: item.id,
                title: item.title,
              ))
          .toList(),
      options: model.options
          ?.map((item) => QuizGroupOptionLocalModel(
                id: item.id,
                value: item.value,
                correctGroupId: item.correctGroupId,
              ))
          .toList(),
      explanation: model.explanation,
    );
  }

  static QuizGroupEntity remoteToEntity(QuizGroupRemoteModel model) {
    return QuizGroupEntity(
      groups: model.groups
          ?.map((item) => QuizGroupItemEntity(
                id: item.id,
                title: item.title,
              ))
          .toList(),
      options: model.options
          ?.map((item) => QuizGroupOptionEntity(
                id: item.id,
                value: item.value,
                correctGroupId: item.correctGroupId,
              ))
          .toList(),
      explanation: model.explanation,
    );
  }

  static QuizGroupEntity localToEntity(QuizGroupLocalModel model) {
    return QuizGroupEntity(
      groups: model.groups
          ?.map((item) => QuizGroupItemEntity(
                id: item.id,
                title: item.title,
              ))
          .toList(),
      options: model.options
          ?.map((item) => QuizGroupOptionEntity(
                id: item.id,
                value: item.value,
                correctGroupId: item.correctGroupId,
              ))
          .toList(),
      explanation: model.explanation,
    );
  }

  static QuizGroupRemoteModel localToRemote(QuizGroupLocalModel model) {
    return QuizGroupRemoteModel(
      groups: model.groups
          ?.map((item) => QuizGroupItemRemoteModel(
                id: item.id,
                title: item.title,
              ))
          .toList(),
      options: model.options
          ?.map((item) => QuizGroupOptionRemoteModel(
                id: item.id,
                value: item.value,
                correctGroupId: item.correctGroupId,
              ))
          .toList(),
      explanation: model.explanation,
    );
  }

  static QuizGroupRemoteModel entityToRemote(QuizGroupEntity entity) {
    return QuizGroupRemoteModel(
      groups: entity.groups
          ?.map((item) => QuizGroupItemRemoteModel(
                id: item.id,
                title: item.title,
              ))
          .toList(),
      options: entity.options
          ?.map((item) => QuizGroupOptionRemoteModel(
                id: item.id,
                value: item.value,
                correctGroupId: item.correctGroupId,
              ))
          .toList(),
      explanation: entity.explanation,
    );
  }

  static QuizGroupLocalModel entityToLocal(QuizGroupEntity entity) {
    return QuizGroupLocalModel(
      groups: entity.groups
          ?.map((item) => QuizGroupItemLocalModel(
                id: item.id,
                title: item.title,
              ))
          .toList(),
      options: entity.options
          ?.map((item) => QuizGroupOptionLocalModel(
                id: item.id,
                value: item.value,
                correctGroupId: item.correctGroupId,
              ))
          .toList(),
      explanation: entity.explanation,
    );
  }
}

import 'package:epic_story_app/data/models/locals/quiz/history/quiz_group_answer_local_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/history/quiz_group_answer_remote_model.dart';
import 'package:epic_story_app/domain/entities/quiz/history/quiz_group_answer_entity.dart';

class QuizGroupAnswerMapper {
  // Remote -> Local
  static QuizGroupAnswerLocalModel remoteToLocal(
    QuizGroupAnswerRemoteModel model,
  ) {
    return QuizGroupAnswerLocalModel.fromMap(model.assignedGroupByOption);
  }

  // Remote -> Entity
  static QuizGroupAnswerEntity remoteToEntity(
    QuizGroupAnswerRemoteModel model,
  ) {
    return QuizGroupAnswerEntity(
      assignedGroupByOption: model.assignedGroupByOption,
    );
  }

  // Local -> Remote
  static QuizGroupAnswerRemoteModel localToRemote(
    QuizGroupAnswerLocalModel model,
  ) {
    return QuizGroupAnswerRemoteModel(
      assignedGroupByOption: model.toMap(),
    );
  }

  // Local -> Entity
  static QuizGroupAnswerEntity localToEntity(
    QuizGroupAnswerLocalModel model,
  ) {
    return QuizGroupAnswerEntity(
      assignedGroupByOption: model.toMap(),
    );
  }

  // Entity -> Remote
  static QuizGroupAnswerRemoteModel entityToRemote(
    QuizGroupAnswerEntity entity,
  ) {
    return QuizGroupAnswerRemoteModel(
      assignedGroupByOption: entity.assignedGroupByOption,
    );
  }

  // Entity -> Local
  static QuizGroupAnswerLocalModel entityToLocal(
    QuizGroupAnswerEntity entity,
  ) {
    return QuizGroupAnswerLocalModel.fromMap(entity.assignedGroupByOption);
  }
}

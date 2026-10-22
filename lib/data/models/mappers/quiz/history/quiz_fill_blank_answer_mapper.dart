import 'package:epic_story_app/data/models/locals/quiz/history/quiz_fill_blank_answer_local_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/history/quiz_fill_blank_answer_remote_model.dart';
import 'package:epic_story_app/domain/entities/quiz/history/quiz_fill_blank_answer_entity.dart';

class QuizFillBlankAnswerMapper {
  // Remote -> Local
  static QuizFillBlankAnswerLocalModel remoteToLocal(
    QuizFillBlankAnswerRemoteModel model,
  ) {
    return QuizFillBlankAnswerLocalModel.fromMap(
      model.assignedBlankByOption,
    );
  }

  // Remote -> Entity
  static QuizFillBlankAnswerEntity remoteToEntity(
    QuizFillBlankAnswerRemoteModel model,
  ) {
    return QuizFillBlankAnswerEntity(
      assignedBlankByOption: model.assignedBlankByOption,
    );
  }

  // Local -> Remote
  static QuizFillBlankAnswerRemoteModel localToRemote(
    QuizFillBlankAnswerLocalModel model,
  ) {
    return QuizFillBlankAnswerRemoteModel(
      assignedBlankByOption: model.toMap(),
    );
  }

  // Local -> Entity
  static QuizFillBlankAnswerEntity localToEntity(
    QuizFillBlankAnswerLocalModel model,
  ) {
    return QuizFillBlankAnswerEntity(
      assignedBlankByOption: model.toMap(),
    );
  }

  // Entity -> Remote
  static QuizFillBlankAnswerRemoteModel entityToRemote(
    QuizFillBlankAnswerEntity entity,
  ) {
    return QuizFillBlankAnswerRemoteModel(
      assignedBlankByOption: entity.assignedBlankByOption,
    );
  }

  // Entity -> Local
  static QuizFillBlankAnswerLocalModel entityToLocal(
    QuizFillBlankAnswerEntity entity,
  ) {
    return QuizFillBlankAnswerLocalModel.fromMap(
      entity.assignedBlankByOption,
    );
  }
}

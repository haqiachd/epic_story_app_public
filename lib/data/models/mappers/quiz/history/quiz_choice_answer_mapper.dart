import 'package:epic_story_app/data/models/locals/quiz/history/quiz_choice_history_local_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/history/quiz_choice_answer_remote_model.dart';
import 'package:epic_story_app/domain/entities/quiz/history/quiz_choice_answer_entity.dart';

class QuizChoiceAnswerMapper {
  // Remote -> Local
  static QuizChoiceAnswerLocalModel remoteToLocal(
    QuizChoiceAnswerRemoteModel model,
  ) {
    return QuizChoiceAnswerLocalModel(
      selectedAnswer: model.selectedAnswer,
    );
  }

  // Remote -> Entity
  static QuizChoiceAnswerEntity remoteToEntity(
    QuizChoiceAnswerRemoteModel model,
  ) {
    return QuizChoiceAnswerEntity(
      selectedAnswer: model.selectedAnswer,
    );
  }

  // Local -> Remote
  static QuizChoiceAnswerRemoteModel localToRemote(
    QuizChoiceAnswerLocalModel model,
  ) {
    return QuizChoiceAnswerRemoteModel(
      selectedAnswer: model.selectedAnswer,
    );
  }

  // Local -> Entity
  static QuizChoiceAnswerEntity localToEntity(
    QuizChoiceAnswerLocalModel model,
  ) {
    return QuizChoiceAnswerEntity(
      selectedAnswer: model.selectedAnswer,
    );
  }

  // Entity -> Remote
  static QuizChoiceAnswerRemoteModel entityToRemote(
    QuizChoiceAnswerEntity entity,
  ) {
    return QuizChoiceAnswerRemoteModel(
      selectedAnswer: entity.selectedAnswer,
    );
  }

  // Entity -> Local
  static QuizChoiceAnswerLocalModel entityToLocal(
    QuizChoiceAnswerEntity entity,
  ) {
    return QuizChoiceAnswerLocalModel(
      selectedAnswer: entity.selectedAnswer,
    );
  }
}

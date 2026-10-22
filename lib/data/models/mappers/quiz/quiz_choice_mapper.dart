import 'package:epic_story_app/data/models/locals/quiz/quiz_choice_local_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/quiz_choice_remote_model.dart';
import 'package:epic_story_app/domain/entities/quiz/quiz_choice_entity.dart';

class QuizChoiceMapper {
  // Remote -> Entity
  static QuizChoiceEntity remoteToEntity(QuizChoiceRemoteModel model) {
    return QuizChoiceEntity(
      question: model.question,
      image: model.image,
      quizType: model.quizType,
      choices: model.choices,
      correctedIndex: model.correctedIndex,
      explanation: model.explanation,
    );
  }

  // Remote -> Local
  static QuizChoiceLocalModel remoteToLocal(QuizChoiceRemoteModel model) {
    return QuizChoiceLocalModel(
      question: model.question,
      image: model.image,
      quizType: model.quizType,
      choices: model.choices,
      correctedIndex: model.correctedIndex,
      explanation: model.explanation,
    );
  }

  // Local -> Remote
  static QuizChoiceRemoteModel localToRemote(QuizChoiceLocalModel model) {
    return QuizChoiceRemoteModel(
      question: model.question,
      image: model.image,
      quizType: model.quizType,
      choices: model.choices,
      correctedIndex: model.correctedIndex,
      explanation: model.explanation,
    );
  }

  // Local -> Entity
  static QuizChoiceEntity localToEntity(QuizChoiceLocalModel model) {
    return QuizChoiceEntity(
      question: model.question,
      image: model.image,
      quizType: model.quizType,
      choices: model.choices,
      correctedIndex: model.correctedIndex,
      explanation: model.explanation,
    );
  }

  // Entity -> Remote
  static QuizChoiceRemoteModel entityToRemote(QuizChoiceEntity entity) {
    return QuizChoiceRemoteModel(
      question: entity.question,
      image: entity.image,
      quizType: entity.quizType,
      choices: entity.choices,
      correctedIndex: entity.correctedIndex,
      explanation: entity.explanation,
    );
  }

  // Entity -> Local
  static QuizChoiceLocalModel entityToLocal(QuizChoiceEntity entity) {
    return QuizChoiceLocalModel(
      question: entity.question,
      image: entity.image,
      quizType: entity.quizType,
      choices: entity.choices,
      correctedIndex: entity.correctedIndex,
      explanation: entity.explanation,
    );
  }
}

import 'package:epic_story_app/data/models/locals/flashcards/flashcard_card_local_model.dart';
import 'package:epic_story_app/data/models/remotes/flashcards/flashcard_card_remote_model.dart';
import 'package:epic_story_app/domain/entities/flashcards/flashcard_card_entity.dart';

import 'flashcard_quiz_mapper.dart';

class FlashCardCardMapper {
  // Remote -> Entity
  static FlashcardCardEntity remoteToEntity(FlashcardCardRemoteModel model) {
    return FlashcardCardEntity(
      nPage: model.nPage,
      image: model.image,
      text: model.text,
      isQuizGenerated: model.isQuizGenerated,
      quizType: model.quizType,
      quiz: model.quiz == null
          ? null
          : FlashCardQuizMapper.remoteToEntity(model.quiz!),
    );
  }

  // Remote -> Local
  static FlashcardCardLocalModel remoteToLocal(FlashcardCardRemoteModel model) {
    return FlashcardCardLocalModel(
      nPage: model.nPage,
      image: model.image,
      text: model.text,
      isQuizGenerated: model.isQuizGenerated,
      quizType: model.quizType,
      quiz: model.quiz == null
          ? null
          : FlashCardQuizMapper.remoteToLocal(model.quiz!),
    );
  }

  // Local -> Remote
  static FlashcardCardRemoteModel localToRemote(FlashcardCardLocalModel model) {
    return FlashcardCardRemoteModel(
      nPage: model.nPage,
      image: model.image,
      text: model.text,
      isQuizGenerated: model.isQuizGenerated,
      quizType: model.quizType,
      quiz: model.quiz == null
          ? null
          : FlashCardQuizMapper.localToRemote(model.quiz!),
    );
  }

  // Local -> Entity
  static FlashcardCardEntity localToEntity(FlashcardCardLocalModel model) {
    return FlashcardCardEntity(
      nPage: model.nPage,
      image: model.image,
      text: model.text,
      isQuizGenerated: model.isQuizGenerated,
      quizType: model.quizType,
      quiz: model.quiz == null
          ? null
          : FlashCardQuizMapper.localToEntity(model.quiz!),
    );
  }

  // Entity -> Local
  static FlashcardCardLocalModel entityToLocal(FlashcardCardEntity entity) {
    return FlashcardCardLocalModel(
      nPage: entity.nPage,
      image: entity.image,
      text: entity.text,
      isQuizGenerated: entity.isQuizGenerated,
      quizType: entity.quizType,
      quiz: entity.quiz == null
          ? null
          : FlashCardQuizMapper.entityToLocal(entity.quiz!),
    );
  }

  // Entity -> Remote
  static FlashcardCardRemoteModel entityToRemote(FlashcardCardEntity entity) {
    return FlashcardCardRemoteModel(
      nPage: entity.nPage,
      image: entity.image,
      text: entity.text,
      isQuizGenerated: entity.isQuizGenerated,
      quizType: entity.quizType,
      quiz: entity.quiz == null
          ? null
          : FlashCardQuizMapper.entityToRemote(entity.quiz!),
    );
  }
}

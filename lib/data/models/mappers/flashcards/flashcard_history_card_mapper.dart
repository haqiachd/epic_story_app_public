import 'package:epic_story_app/data/models/locals/flashcards/flashcard_history_card_local_model.dart';
import 'package:epic_story_app/data/models/mappers/flashcards/flashcard_history_answer_mapper.dart';
import 'package:epic_story_app/data/models/remotes/flashcards/flashcard_history_card_remote_model.dart';
import 'package:epic_story_app/domain/entities/flashcards/flashcard_history_card_entity.dart';

class FlashcardHistoryCardMapper {
  // Remote -> Entity
  static FlashcardHistoryCardEntity remoteToEntity(
    FlashcardHistoryCardRemoteModel model,
  ) {
    return FlashcardHistoryCardEntity(
      nPage: model.nPage,
      isRead: model.isRead,
      isQuiz: model.isQuiz,
      completedQuiz: model.completedQuiz,
      correctAnswer: model.correctAnswer,
      isQuizAlreadyGenerated: model.isQuizAlreadyGenerated,
      screenshot: model.screenshot,
      historyAnswer: model.historyAnswer != null
          ? FlashcardHistoryAnswerMapper.remoteToEntity(model.historyAnswer!)
          : null,
    );
  }

  // Remote -> Local
  static FlashcardHistoryCardLocalModel remoteToLocal(
    FlashcardHistoryCardRemoteModel model,
  ) {
    return FlashcardHistoryCardLocalModel(
      nPage: model.nPage,
      isRead: model.isRead,
      isQuiz: model.isQuiz,
      completedQuiz: model.completedQuiz,
      correctAnswer: model.correctAnswer,
      isQuizAlreadyGenerated: model.isQuizAlreadyGenerated,
      screenshot: model.screenshot,
      historyAnswer: model.historyAnswer != null
          ? FlashcardHistoryAnswerMapper.remoteToLocal(model.historyAnswer!)
          : null,
    );
  }

  // Local -> Remote
  static FlashcardHistoryCardRemoteModel localToRemote(
    FlashcardHistoryCardLocalModel model,
  ) {
    return FlashcardHistoryCardRemoteModel(
      nPage: model.nPage,
      isRead: model.isRead,
      isQuiz: model.isQuiz,
      completedQuiz: model.completedQuiz,
      correctAnswer: model.correctAnswer,
      isQuizAlreadyGenerated: model.isQuizAlreadyGenerated,
      screenshot: model.screenshot,
      historyAnswer: model.historyAnswer != null
          ? FlashcardHistoryAnswerMapper.localToRemote(model.historyAnswer!)
          : null,
    );
  }

  // Local -> Entity
  static FlashcardHistoryCardEntity localToEntity(
    FlashcardHistoryCardLocalModel model,
  ) {
    return FlashcardHistoryCardEntity(
      nPage: model.nPage,
      isRead: model.isRead,
      isQuiz: model.isQuiz,
      completedQuiz: model.completedQuiz,
      correctAnswer: model.correctAnswer,
      isQuizAlreadyGenerated: model.isQuizAlreadyGenerated,
      screenshot: model.screenshot,
      historyAnswer: model.historyAnswer != null
          ? FlashcardHistoryAnswerMapper.localToEntity(model.historyAnswer!)
          : null,
    );
  }

  // Entity -> Local
  static FlashcardHistoryCardLocalModel entityToLocal(
    FlashcardHistoryCardEntity entity,
  ) {
    return FlashcardHistoryCardLocalModel(
      nPage: entity.nPage,
      isRead: entity.isRead,
      isQuiz: entity.isQuiz,
      completedQuiz: entity.completedQuiz,
      correctAnswer: entity.correctAnswer,
      isQuizAlreadyGenerated: entity.isQuizAlreadyGenerated,
      screenshot: entity.screenshot,
      historyAnswer: entity.historyAnswer != null
          ? FlashcardHistoryAnswerMapper.entityToLocal(entity.historyAnswer!)
          : null,
    );
  }

  // Entity -> Remote
  static FlashcardHistoryCardRemoteModel entityToRemote(
    FlashcardHistoryCardEntity entity,
  ) {
    return FlashcardHistoryCardRemoteModel(
      nPage: entity.nPage,
      isRead: entity.isRead,
      isQuiz: entity.isQuiz,
      completedQuiz: entity.completedQuiz,
      correctAnswer: entity.correctAnswer,
      isQuizAlreadyGenerated: entity.isQuizAlreadyGenerated,
      screenshot: entity.screenshot,
      historyAnswer: entity.historyAnswer != null
          ? FlashcardHistoryAnswerMapper.entityToRemote(entity.historyAnswer!)
          : null,
    );
  }
}

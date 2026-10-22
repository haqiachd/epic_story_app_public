import 'package:epic_story_app/data/models/locals/flashcards/flashcard_history_answer_local_model.dart';
import 'package:epic_story_app/data/models/mappers/quiz/history/quiz_choice_answer_mapper.dart';
import 'package:epic_story_app/data/models/mappers/quiz/history/quiz_fill_blank_answer_mapper.dart';
import 'package:epic_story_app/data/models/mappers/quiz/history/quiz_group_answer_mapper.dart';
import 'package:epic_story_app/data/models/mappers/quiz/quiz_choice_mapper.dart';
import 'package:epic_story_app/data/models/mappers/quiz/quiz_group_mapper.dart';
import 'package:epic_story_app/data/models/mappers/quiz_fill_blank_mapper.dart';
import 'package:epic_story_app/data/models/remotes/flashcards/flashcard_history_answer_remote_model.dart';
import 'package:epic_story_app/domain/entities/flashcards/flashcard_history_answer_entity.dart';

class FlashcardHistoryAnswerMapper {
  // Remote -> Local
  static FlashcardHistoryAnswerLocalModel remoteToLocal(
    FlashcardHistoryAnswerRemoteModel model,
  ) {
    return FlashcardHistoryAnswerLocalModel(
      quizType: model.quizType,
      retry: model.retry,
      question: model.question,
      answer: model.answer,
      multipleChoiceQuestion: model.multipleChoiceQuestion != null
          ? QuizChoiceMapper.remoteToLocal(model.multipleChoiceQuestion!)
          : null,
      multipleChoiceAnswer: model.multipleChoiceAnswer != null
          ? QuizChoiceAnswerMapper.remoteToLocal(model.multipleChoiceAnswer!)
          : null,
      groupQuestion: model.groupQuestion != null
          ? QuizGroupMapper.remoteToLocal(model.groupQuestion!)
          : null,
      groupAnswer: model.groupAnswer != null
          ? QuizGroupAnswerMapper.remoteToLocal(model.groupAnswer!)
          : null,
      fillBlankAnswer: model.fillBlankAnswer != null
          ? QuizFillBlankAnswerMapper.remoteToLocal(model.fillBlankAnswer!)
          : null,
      fillBlankQuestion: model.fillBlankQuestion != null
          ? QuizFillBlankMapper.remoteToLocal(model.fillBlankQuestion!)
          : null,
    );
  }

  // Remote -> Entity
  static FlashcardHistoryAnswerEntity remoteToEntity(
    FlashcardHistoryAnswerRemoteModel model,
  ) {
    return FlashcardHistoryAnswerEntity(
      quizType: model.quizType,
      retry: model.retry,
      question: model.question,
      answer: model.answer,
      multipleChoiceQuestion: model.multipleChoiceQuestion != null
          ? QuizChoiceMapper.remoteToEntity(model.multipleChoiceQuestion!)
          : null,
      multipleChoiceAnswer: model.multipleChoiceAnswer != null
          ? QuizChoiceAnswerMapper.remoteToEntity(model.multipleChoiceAnswer!)
          : null,
      groupQuestion: model.groupQuestion != null
          ? QuizGroupMapper.remoteToEntity(model.groupQuestion!)
          : null,
      groupAnswer: model.groupAnswer != null
          ? QuizGroupAnswerMapper.remoteToEntity(model.groupAnswer!)
          : null,
      fillBlankAnswer: model.fillBlankAnswer != null
          ? QuizFillBlankAnswerMapper.remoteToEntity(model.fillBlankAnswer!)
          : null,
      fillBlankQuestion: model.fillBlankQuestion != null
          ? QuizFillBlankMapper.remoteToEntity(model.fillBlankQuestion!)
          : null,
    );
  }

  // Local -> Remote
  static FlashcardHistoryAnswerRemoteModel localToRemote(
    FlashcardHistoryAnswerLocalModel model,
  ) {
    return FlashcardHistoryAnswerRemoteModel(
      quizType: model.quizType,
      retry: model.retry,
      question: model.question,
      answer: model.answer,
      multipleChoiceQuestion: model.multipleChoiceQuestion != null
          ? QuizChoiceMapper.localToRemote(model.multipleChoiceQuestion!)
          : null,
      multipleChoiceAnswer: model.multipleChoiceAnswer != null
          ? QuizChoiceAnswerMapper.localToRemote(model.multipleChoiceAnswer!)
          : null,
      groupQuestion: model.groupQuestion != null
          ? QuizGroupMapper.localToRemote(model.groupQuestion!)
          : null,
      groupAnswer: model.groupAnswer != null
          ? QuizGroupAnswerMapper.localToRemote(model.groupAnswer!)
          : null,
      fillBlankQuestion: model.fillBlankQuestion != null
          ? QuizFillBlankMapper.localToRemote(model.fillBlankQuestion!)
          : null,
      fillBlankAnswer: model.fillBlankAnswer != null
          ? QuizFillBlankAnswerMapper.localToRemote(model.fillBlankAnswer!)
          : null,
    );
  }

  // Local -> Entity
  static FlashcardHistoryAnswerEntity localToEntity(
    FlashcardHistoryAnswerLocalModel model,
  ) {
    return FlashcardHistoryAnswerEntity(
      quizType: model.quizType,
      retry: model.retry,
      question: model.question,
      answer: model.answer,
      multipleChoiceQuestion: model.multipleChoiceQuestion != null
          ? QuizChoiceMapper.localToEntity(model.multipleChoiceQuestion!)
          : null,
      multipleChoiceAnswer: model.multipleChoiceAnswer != null
          ? QuizChoiceAnswerMapper.localToEntity(model.multipleChoiceAnswer!)
          : null,
      groupQuestion: model.groupQuestion != null
          ? QuizGroupMapper.localToEntity(model.groupQuestion!)
          : null,
      groupAnswer: model.groupAnswer != null
          ? QuizGroupAnswerMapper.localToEntity(model.groupAnswer!)
          : null,
      fillBlankQuestion: model.fillBlankQuestion != null
          ? QuizFillBlankMapper.localToEntity(model.fillBlankQuestion!)
          : null,
      fillBlankAnswer: model.fillBlankAnswer != null
          ? QuizFillBlankAnswerMapper.localToEntity(model.fillBlankAnswer!)
          : null,
    );
  }

  // Entity -> Remote
  static FlashcardHistoryAnswerRemoteModel entityToRemote(
    FlashcardHistoryAnswerEntity entity,
  ) {
    return FlashcardHistoryAnswerRemoteModel(
      quizType: entity.quizType,
      retry: entity.retry,
      question: entity.question,
      answer: entity.answer,
      multipleChoiceQuestion: entity.multipleChoiceQuestion != null
          ? QuizChoiceMapper.entityToRemote(entity.multipleChoiceQuestion!)
          : null,
      multipleChoiceAnswer: entity.multipleChoiceAnswer != null
          ? QuizChoiceAnswerMapper.entityToRemote(entity.multipleChoiceAnswer!)
          : null,
      groupQuestion: entity.groupQuestion != null
          ? QuizGroupMapper.entityToRemote(entity.groupQuestion!)
          : null,
      groupAnswer: entity.groupAnswer != null
          ? QuizGroupAnswerMapper.entityToRemote(entity.groupAnswer!)
          : null,
      fillBlankAnswer: entity.fillBlankAnswer != null
          ? QuizFillBlankAnswerMapper.entityToRemote(entity.fillBlankAnswer!)
          : null,
      fillBlankQuestion: entity.fillBlankQuestion != null
          ? QuizFillBlankMapper.entityToRemote(entity.fillBlankQuestion!)
          : null,
    );
  }

  // Entity -> Local
  static FlashcardHistoryAnswerLocalModel entityToLocal(
    FlashcardHistoryAnswerEntity entity,
  ) {
    return FlashcardHistoryAnswerLocalModel(
      quizType: entity.quizType,
      retry: entity.retry,
      question: entity.question,
      answer: entity.answer,
      multipleChoiceQuestion: entity.multipleChoiceQuestion != null
          ? QuizChoiceMapper.entityToLocal(entity.multipleChoiceQuestion!)
          : null,
      multipleChoiceAnswer: entity.multipleChoiceAnswer != null
          ? QuizChoiceAnswerMapper.entityToLocal(entity.multipleChoiceAnswer!)
          : null,
      groupQuestion: entity.groupQuestion != null
          ? QuizGroupMapper.entityToLocal(entity.groupQuestion!)
          : null,
      groupAnswer: entity.groupAnswer != null
          ? QuizGroupAnswerMapper.entityToLocal(entity.groupAnswer!)
          : null,
      fillBlankQuestion: entity.fillBlankQuestion != null
          ? QuizFillBlankMapper.entityToLocal(entity.fillBlankQuestion!)
          : null,
      fillBlankAnswer: entity.fillBlankAnswer != null
          ? QuizFillBlankAnswerMapper.entityToLocal(entity.fillBlankAnswer!)
          : null,
    );
  }
}

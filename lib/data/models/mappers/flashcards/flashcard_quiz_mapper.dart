import 'package:epic_story_app/data/models/locals/flashcards/flashcard_quiz_local_model.dart';
import 'package:epic_story_app/data/models/mappers/quiz/quiz_choice_mapper.dart';
import 'package:epic_story_app/data/models/mappers/quiz/quiz_group_mapper.dart';
import 'package:epic_story_app/data/models/mappers/quiz_fill_blank_mapper.dart';
import 'package:epic_story_app/data/models/remotes/flashcards/flashcard_quiz_remote_model.dart';
import 'package:epic_story_app/domain/entities/flashcards/flashcard_quiz_entity.dart';

class FlashCardQuizMapper {
  // Remote -> Entity
  static FlashcardQuizEntity remoteToEntity(FlashcardQuizRemoteModel model) {
    return FlashcardQuizEntity(
      quizType: model.quizType,
      quizData: model.quizData,
      explanation: model.explanation,
      multipleChoice: model.multipleChoice != null
          ? QuizChoiceMapper.remoteToEntity(model.multipleChoice!)
          : null,
      fillBlank: model.fillBlank != null
          ? QuizFillBlankMapper.remoteToEntity(model.fillBlank!)
          : null,
      group: model.group != null
          ? QuizGroupMapper.remoteToEntity(model.group!)
          : null,    
    );
  }

  // Remote -> Local
  static FlashcardQuizLocalModel remoteToLocal(FlashcardQuizRemoteModel model) {
    return FlashcardQuizLocalModel(
      quizType: model.quizType,
      quizData: model.quizData,
      explanation: model.explanation,
      multipleChoice: model.multipleChoice != null
          ? QuizChoiceMapper.remoteToLocal(model.multipleChoice!)
          : null,
      fillBlank: model.fillBlank != null
          ? QuizFillBlankMapper.remoteToLocal(model.fillBlank!)
          : null,
      group: model.group != null
          ? QuizGroupMapper.remoteToLocal(model.group!)
          : null,    
    );
  }

  // Local -> Remote
  static FlashcardQuizRemoteModel localToRemote(FlashcardQuizLocalModel model) {
    return FlashcardQuizRemoteModel(
      quizType: model.quizType,
      quizData: model.quizData,
      explanation: model.explanation,
      multipleChoice: model.multipleChoice != null
          ? QuizChoiceMapper.localToRemote(model.multipleChoice!)
          : null,
      fillBlank: model.fillBlank != null
          ? QuizFillBlankMapper.localToRemote(model.fillBlank!)
          : null,
      group: model.group != null
          ? QuizGroupMapper.localToRemote(model.group!)
          : null,
    );
  }

  // Local -> Entity
  static FlashcardQuizEntity localToEntity(FlashcardQuizLocalModel model) {
    return FlashcardQuizEntity(
      quizType: model.quizType,
      quizData: model.quizData,
      explanation: model.explanation,
      multipleChoice: model.multipleChoice != null
          ? QuizChoiceMapper.localToEntity(model.multipleChoice!)
          : null,
      fillBlank: model.fillBlank != null
          ? QuizFillBlankMapper.localToEntity(model.fillBlank!)
          : null,
      group: model.group != null
          ? QuizGroupMapper.localToEntity(model.group!)
          : null,        
    );
  }

  // Entity -> Local
  static FlashcardQuizLocalModel entityToLocal(FlashcardQuizEntity entity) {
    return FlashcardQuizLocalModel(
      quizType: entity.quizType,
      quizData: entity.quizData,
      explanation: entity.explanation,
      multipleChoice: entity.multipleChoice != null
          ? QuizChoiceMapper.entityToLocal(entity.multipleChoice!)
          : null,
      fillBlank: entity.fillBlank != null 
          ? QuizFillBlankMapper.entityToLocal(entity.fillBlank!)
          : null,    
      group: entity.group != null
          ? QuizGroupMapper.entityToLocal(entity.group!)
          : null,    
    );
  }

  // Entity -> Remote
  static FlashcardQuizRemoteModel entityToRemote(FlashcardQuizEntity entity) {
    return FlashcardQuizRemoteModel(
      quizType: entity.quizType,
      quizData: entity.quizData,
      explanation: entity.explanation,
      multipleChoice: entity.multipleChoice != null
          ? QuizChoiceMapper.entityToRemote(entity.multipleChoice!)
          : null,
      fillBlank: entity.fillBlank != null
          ? QuizFillBlankMapper.entityToRemote(entity.fillBlank!)
          : null,
      group: entity.group != null
          ? QuizGroupMapper.entityToRemote(entity.group!)
          : null,        
    );
  }

}

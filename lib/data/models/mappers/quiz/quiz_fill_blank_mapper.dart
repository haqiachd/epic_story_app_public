import 'package:epic_story_app/data/models/locals/quiz/quiz_fill_blank_local_model.dart';
import 'package:epic_story_app/data/models/remotes/quiz/quiz_fill_blank_remote_model.dart';
import 'package:epic_story_app/domain/entities/quiz/quiz_fill_blank_entity.dart';

class QuizFillBlankMapper {
  static QuizFillBlankLocalModel remoteToLocal(QuizFillBlankRemoteModel model) {
    return QuizFillBlankLocalModel(
      sentence: model.sentence
          ?.map((item) => QuizFillBlankSentenceLocalModel(
                type: item.type,
                value: item.value,
                id: item.id,
              ))
          .toList(),
      options: model.options
          ?.map((item) => QuizFillBlankOptionLocalModel(
                id: item.id,
                value: item.value,
                correctBlankId: item.correctBlankId,
              ))
          .toList(),
      explanation: model.explanation,    
    );
  }

  static QuizFillBlankEntity remoteToEntity(QuizFillBlankRemoteModel model) {
    return QuizFillBlankEntity(
      sentence: model.sentence
          ?.map((item) => QuizFillBlankSentenceEntity(
                type: item.type,
                value: item.value,
                id: item.id,
              ))
          .toList(),
      options: model.options
          ?.map((item) => QuizFillBlankOptionEntity(
                id: item.id,
                value: item.value,
                correctBlankId: item.correctBlankId,
              ))
          .toList(),
      explanation: model.explanation,
    );
  }

  static QuizFillBlankEntity localToEntity(QuizFillBlankLocalModel model) {
    return QuizFillBlankEntity(
      sentence: model.sentence
          ?.map((item) => QuizFillBlankSentenceEntity(
                type: item.type,
                value: item.value,
                id: item.id,
              ))
          .toList(),
      options: model.options
          ?.map((item) => QuizFillBlankOptionEntity(
                id: item.id,
                value: item.value,
                correctBlankId: item.correctBlankId,
              ))
          .toList(),
      explanation: model.explanation,
    );
  }

  static QuizFillBlankRemoteModel localToRemote(QuizFillBlankLocalModel model) {
    return QuizFillBlankRemoteModel(
      sentence: model.sentence
          ?.map((item) => QuizFillBlankSentenceRemoteModel(
                type: item.type,
                value: item.value,
                id: item.id,
              ))
          .toList(),
      options: model.options
          ?.map((item) => QuizFillBlankOptionRemoteModel(
                id: item.id,
                value: item.value,
                correctBlankId: item.correctBlankId,
              ))
          .toList(),
      explanation: model.explanation, 
    );
  }

  static QuizFillBlankRemoteModel entityToRemote(QuizFillBlankEntity entity) {
    return QuizFillBlankRemoteModel(
      sentence: entity.sentence
          ?.map((item) => QuizFillBlankSentenceRemoteModel(
                type: item.type,
                value: item.value,
                id: item.id,
              ))
          .toList(),
      options: entity.options
          ?.map((item) => QuizFillBlankOptionRemoteModel(
                id: item.id,
                value: item.value,
                correctBlankId: item.correctBlankId,
              ))
          .toList(),
      explanation: entity.explanation,
    );
  }

  static QuizFillBlankLocalModel entityToLocal(QuizFillBlankEntity entity) {
    return QuizFillBlankLocalModel(
      sentence: entity.sentence
          ?.map((item) => QuizFillBlankSentenceLocalModel(
                type: item.type,
                value: item.value,
                id: item.id,
              ))
          .toList(),
      options: entity.options
          ?.map((item) => QuizFillBlankOptionLocalModel(
                id: item.id,
                value: item.value,
                correctBlankId: item.correctBlankId,
              ))
          .toList(),
      explanation: entity.explanation,
    );
  }
}

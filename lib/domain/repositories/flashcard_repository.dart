import 'package:epic_story_app/domain/entities/flashcards/flashcard_entity.dart';

abstract class FlashCardRepository {
  Future<List<FlashcardEntity>> getFlashcards();
  Future<FlashcardEntity?> getFlashcardById({
    required String flashcardId,
  });
}

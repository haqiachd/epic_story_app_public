import 'package:epic_story_app/domain/entities/flashcards/flashcard_entity.dart';
import 'package:epic_story_app/domain/repositories/flashcard_repository.dart';

class FlashCardUsecase {
  final FlashCardRepository repository;

  FlashCardUsecase(this.repository);

  Future<List<FlashcardEntity>> getFlashcards() async {
    return repository.getFlashcards();
  }

  Future<FlashcardEntity?> getFlashcardById({
    required String flashcardId,
  }) async {
    return repository.getFlashcardById(flashcardId: flashcardId);
  }
}

import 'package:epic_story_app/domain/entities/children_collection_entity.dart';
import 'package:epic_story_app/domain/entities/collection_detail_entity.dart';
import 'package:epic_story_app/domain/entities/collections/flashcard_collection_detail_entity.dart';
import 'package:epic_story_app/domain/entities/collections/flashcard_collection_entity.dart';

abstract class CollectionRepository {
  Future<void> createCollection({
    required ChildrenCollectionEntity collection,
  });
  Future<void> updateCollection({
    required ChildrenCollectionEntity collection,
  });
  Future<void> addBookToCollection({
    required String collectionId,
    required String bookId,
  });
  Future<void> removeBookFromCollection({
    required String collectionId,
    required String bookId,
  });
  Future<void> removeCollection({
    required String collectionId,
  });
  Future<CollectionDetailEntity?> getCollectionDetail({
    required String collectionId,
  });

  Future<void> createFlashcardCollection({
    required FlashCardCollectionEntity collection,
  });

  Future<void> updateFlashcardCollection({
    required FlashCardCollectionEntity collection,
  });

  Future<void> addFlashcardToCollection({
    required String collectionId,
    required String flashcardId,
  });

  Future<void> removeFlashcardFromCollection({
    required String collectionId,
    required String flashcardId,
  });

  Future<void> removeFlashcardCollection({
    required String collectionId,
  });

  Future<FlashcardCollectionDetailEntity?> getFlashcardCollectionDetail({
    required String collectionId,
  });
}

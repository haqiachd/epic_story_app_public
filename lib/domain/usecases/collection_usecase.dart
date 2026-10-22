import 'package:epic_story_app/domain/entities/children_collection_entity.dart';
import 'package:epic_story_app/domain/entities/collection_detail_entity.dart';
import 'package:epic_story_app/domain/entities/collections/flashcard_collection_detail_entity.dart';
import 'package:epic_story_app/domain/entities/collections/flashcard_collection_entity.dart';
import 'package:epic_story_app/domain/repositories/collection_repository.dart';

class CollectionUsecase {
  final CollectionRepository repository;

  CollectionUsecase({required this.repository});

  Future<void> createCollection({
    required ChildrenCollectionEntity collection,
  }) async {
    return await repository.createCollection(
      collection: collection,
    );
  }

  Future<void> updateCollection({
    required ChildrenCollectionEntity collection,
  }) async {
    return await repository.updateCollection(
      collection: collection,
    );
  }

  Future<void> addBookToCollection({
    required String collectionId,
    required String bookId,
  }) {
    return repository.addBookToCollection(
      collectionId: collectionId,
      bookId: bookId,
    );
  }

  Future<void> removeBookFromCollection({
    required String collectionId,
    required String bookId,
  }) {
    return repository.removeBookFromCollection(
      collectionId: collectionId,
      bookId: bookId,
    );
  }

  Future<void> removeCollection({
    required String collectionId,
  }) {
    return repository.removeCollection(
      collectionId: collectionId,
    );
  }

  Future<CollectionDetailEntity?> getCollectionDetail({
    required String collectionId,
  }) async {
    return await repository.getCollectionDetail(
      collectionId: collectionId,
    );
  }

  Future<void> createFlashcardCollection({
    required FlashCardCollectionEntity collection,
  }) async {
    return repository.createFlashcardCollection(collection: collection);
  }

  Future<void> updateFlashcardCollection({
    required FlashCardCollectionEntity collection,
  }) async {
    return repository.updateFlashcardCollection(collection: collection);
  }

  Future<void> addFlashcardToCollection({
    required String collectionId,
    required String flashcardId,
  }) {
    return repository.addFlashcardToCollection(
      collectionId: collectionId,
      flashcardId: flashcardId,
    );
  }

  Future<void> removeFlashcardFromCollection({
    required String collectionId,
    required String flashcardId,
  }) {
    return repository.removeFlashcardFromCollection(
      collectionId: collectionId,
      flashcardId: flashcardId,
    );
  }

  Future<void> removeFlashcardCollection({
    required String collectionId,
  }) {
    return repository.removeFlashcardCollection(
      collectionId: collectionId,
    );
  }

  Future<FlashcardCollectionDetailEntity?> getFlashcardCollectionDetail({
    required String collectionId,
  }) async {
    return repository.getFlashcardCollectionDetail(
      collectionId: collectionId,
    );
  }
}

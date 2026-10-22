import 'package:epic_story_app/data/datasources/locals/collection_local_data_source.dart';
import 'package:epic_story_app/data/datasources/remotes/collection_remote_data_source.dart';
import 'package:epic_story_app/data/models/mappers/children_collection_mapper.dart';
import 'package:epic_story_app/data/models/mappers/collection_detail_mapper.dart';
import 'package:epic_story_app/data/models/mappers/flashcard_collection_mapper.dart';
import 'package:epic_story_app/domain/entities/children_collection_entity.dart';
import 'package:epic_story_app/domain/entities/collection_detail_entity.dart';
import 'package:epic_story_app/domain/entities/collections/flashcard_collection_detail_entity.dart';
import 'package:epic_story_app/domain/entities/collections/flashcard_collection_entity.dart';
import 'package:epic_story_app/domain/repositories/collection_repository.dart';

class CollectionRepositoryImpl implements CollectionRepository {
  final CollectionLocalDataSource localDataSource;
  final CollectionRemoteDataSource remoteDataSource;

  CollectionRepositoryImpl({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  @override
  Future<void> createCollection({
    required ChildrenCollectionEntity collection,
  }) async {
    return await remoteDataSource.createCollection(
      collection: ChildrenCollectionMapper.entityToRemote(collection),
    );
  }

  @override
  Future<void> updateCollection({
    required ChildrenCollectionEntity collection,
  }) async {
    return await remoteDataSource.updateCollection(
      collection: ChildrenCollectionMapper.entityToRemote(collection),
    );
  }

  @override
  Future<void> addBookToCollection({
    required String collectionId,
    required String bookId,
  }) {
    return remoteDataSource.addBookToCollection(
      collectionId: collectionId,
      bookId: bookId,
    );
  }

  @override
  Future<CollectionDetailEntity?> getCollectionDetail({
    required String collectionId,
  }) async {
    final remoteModel =
        await remoteDataSource.getCollectionDetail(collectionId: collectionId);
    if (remoteModel == null) return null;
    return CollectionDetailMapper.remoteToEntity(remoteModel);
  }

  @override
  Future<void> removeBookFromCollection({
    required String collectionId,
    required String bookId,
  }) {
    return remoteDataSource.removeBookFromCollection(
      collectionId: collectionId,
      bookId: bookId,
    );
  }

  @override
  Future<void> removeCollection({
    required String collectionId,
  }) {
    return remoteDataSource.removeCollection(
      collectionId: collectionId,
    );
  }

  @override
  Future<void> createFlashcardCollection({
    required FlashCardCollectionEntity collection,
  }) {
    return remoteDataSource.createFlashcardCollection(
      collection: FlashcardCollectionMapper.entityToRemote(collection),
    );
  }

  @override
  Future<void> updateFlashcardCollection({
    required FlashCardCollectionEntity collection,
  }) {
    return remoteDataSource.updateFlashcardCollection(
      collection: FlashcardCollectionMapper.entityToRemote(collection),
    );
  }

  @override
  Future<void> addFlashcardToCollection({
    required String collectionId,
    required String flashcardId,
  }) {
    return remoteDataSource.addFlashcardToCollection(
      collectionId: collectionId,
      flashcardId: flashcardId,
    );
  }

  @override
  Future<void> removeFlashcardFromCollection({
    required String collectionId,
    required String flashcardId,
  }) {
    return remoteDataSource.removeFlashcardFromCollection(
      collectionId: collectionId,
      flashcardId: flashcardId,
    );
  }

  @override
  Future<void> removeFlashcardCollection({
    required String collectionId,
  }) {
    return remoteDataSource.removeFlashcardCollection(
      collectionId: collectionId,
    );
  }

  @override
  Future<FlashcardCollectionDetailEntity?> getFlashcardCollectionDetail({
    required String collectionId,
  }) async {
    final remoteModel = await remoteDataSource.getFlashcardCollectionDetail(
      collectionId: collectionId,
    );
    if (remoteModel == null) return null;
    return FlashcardCollectionMapper.remoteDetailToEntity(remoteModel);
  }
}

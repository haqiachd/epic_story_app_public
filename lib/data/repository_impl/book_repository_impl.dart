import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/data/datasources/locals/book_local_data_source.dart';
import 'package:epic_story_app/data/datasources/remotes/book_remote_data_source.dart';
import 'package:epic_story_app/data/models/mappers/book_mapper.dart';
import 'package:epic_story_app/domain/entities/book_data_entity.dart';
import 'package:epic_story_app/domain/entities/book_entity.dart';
import 'package:epic_story_app/domain/repositories/book_repository.dart';

class BookRepositoryImpl implements BookRepository {
  final BookRemoteDataSource remoteDataSource;
  final BookLocalDataSource localDataSource;

  BookRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<BookDataEntity> getBooks({
    int limit = 20,
    DocumentSnapshot<Object?>? startAfter,
  }) async {
    final remoteData = await remoteDataSource.getBooks(
      limit: limit,
      startAfter: startAfter,
    );

    if (remoteData.books.isNotEmpty) {
      await localDataSource.clearBooks();
      await localDataSource.saveBooks(
        BookMapper.remoteListToLocalList(remoteData.books),
      );
      return BookDataEntity(
        BookMapper.remoteListToEntityList(remoteData.books),
        remoteData.lastDocument,
      );
    }

    return BookDataEntity([], null);
  }

  @override
  Future<BookEntity?> getBookById({required String bookId}) async {
    final remote = await remoteDataSource.getBookById(bookId: bookId);
    if (remote != null) {
      return BookMapper.remoteToEntity(remote);
    }
    return null;
  }
}

import 'package:epic_story_app/domain/entities/book_data_entity.dart';
import 'package:epic_story_app/domain/entities/book_entity.dart';
import 'package:epic_story_app/domain/repositories/book_repository.dart';

class BookUsecase {
  final BookRepository repository;

  BookUsecase(this.repository);

  Future<BookDataEntity> getBooks({
    int limit = 20,
    dynamic startAfter,
  }) {
    return repository.getBooks(
      limit: limit,
      startAfter: startAfter,
    );
  }

  Future<BookEntity?> getBookById({required String bookId}) {
    return repository.getBookById(bookId: bookId);
  }
}

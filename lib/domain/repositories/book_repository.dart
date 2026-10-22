import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/domain/entities/book_data_entity.dart';

import 'package:epic_story_app/domain/entities/book_entity.dart';

abstract class BookRepository {
  Future<BookDataEntity> getBooks({
    int limit = 20,
    DocumentSnapshot? startAfter,
  });

  Future<BookEntity?> getBookById({required String bookId});
}

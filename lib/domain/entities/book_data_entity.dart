import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/domain/entities/book_entity.dart';

class BookDataEntity {
  final List<BookEntity> books;
  final DocumentSnapshot? lastDocument;

  BookDataEntity(this.books, this.lastDocument);
}
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/data/models/remotes/book_remote_model.dart';

class BookDataModel {
  final List<BookRemoteModel> books;
  final DocumentSnapshot? lastDocument;

  BookDataModel(this.books, this.lastDocument);
}
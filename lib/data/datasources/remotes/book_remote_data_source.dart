import 'package:epic_story_app/core/services/firebase_service.dart';
import 'package:epic_story_app/core/utils/epic_log.dart';
import 'package:epic_story_app/data/models/remotes/book_data_model.dart';
import 'package:epic_story_app/data/models/remotes/book_remote_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class BookRemoteDataSource {
  final FirebaseService fireService = Get.find<FirebaseService>();

  Future<BookDataModel> getBooks({
    int limit = 20,
    DocumentSnapshot? startAfter,
  }) async {
    try {
      Query query = fireService.db.collection('books').orderBy('createdAt');
      if (startAfter != null) {
        query = query.startAfterDocument(startAfter);
      }

      final snapshot = await query.limit(limit).get();
      final docs = snapshot.docs;
      final items = docs
          .map((doc) => BookRemoteModel.fromJson(
              doc.data() as Map<String, dynamic>, doc.id))
          .toList();

      return BookDataModel(items, docs.isNotEmpty ? docs.last : null);
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'getBooks');
      return BookDataModel([], null);
    }
  }

  Future<BookRemoteModel?> getBookById({required String bookId}) async {
    try {
      final doc = await fireService.db.collection('books').doc(bookId).get();
      if (!doc.exists) return null;
      return BookRemoteModel.fromJson(
          doc.data() as Map<String, dynamic>, doc.id);
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'getBookById');
      return null;
    }
  }
}

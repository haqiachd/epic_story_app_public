import 'package:epic_story_app/core/services/isar_service.dart';
import 'package:epic_story_app/core/utils/epic_log.dart';
import 'package:epic_story_app/data/models/locals/book_local_model.dart';
import 'package:get/get.dart';
import 'package:isar_community/isar.dart';

class BookLocalDataSource {
  final IsarService isarService = Get.find<IsarService>();
  Isar get isar => isarService.isar;

  Future<void> saveBooks(
    List<BookLocalModel> books,
  ) async {
    try {
      await isar.writeTxn(() async {
        await isar.bookLocalModels.putAll(books);
      });
    } catch (ex, s) {
      EpicLog.exception(ex, s, 'BookLocalDataSource.saveBooks');
    }
  }

  Future<void> saveBook(
    BookLocalModel book,
  ) async {
    try {
      await isar.writeTxn(() async {
        await isar.bookLocalModels.put(book);
      });
    } catch (ex, s) {
      EpicLog.exception(ex, s, 'BookLocalDataSource.saveBook');
    }
  }

  Future<void> clearBooks() async {
    try {
      await isar.writeTxn(() async {
        await isar.bookLocalModels.clear();
      });
    } catch (ex, s) {
      EpicLog.exception(ex, s, 'BookLocalDataSource.clearBooks');
    }
  }
}

import 'package:epic_story_app/core/services/isar_service.dart';
import 'package:epic_story_app/core/utils/epic_log.dart';
import 'package:epic_story_app/data/models/locals/book_histories_local_model.dart';
import 'package:epic_story_app/data/models/locals/children_local_model.dart';
import 'package:epic_story_app/data/models/locals/flashcards/flashcard_history_local_model.dart';
import 'package:get/get.dart';
import 'package:isar_community/isar.dart';

class ChildrenLocalDataSource {
  final IsarService isarService = Get.find<IsarService>();
  Isar get isar => isarService.isar;

  Future<bool> addOrUpdateChildren(ChildrenLocalModel? children) async {
    try {
      if (children == null) return false;
      await isar.writeTxn(() async {
        await isar.childrenLocalModels.clear();
        await isar.childrenLocalModels.put(children);
        EpicLog.info('~auth_local_datasource : ${children.email} saved');
      });
      return true;
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'addOrUpdateChildren');
    }
    return false;
  }

  Future<ChildrenLocalModel?> getCurrentChildren() async {
    try {
      return await isar.childrenLocalModels.where().findFirst();
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'getCurrentChildren');
    }
    return null;
  }

  Future<bool?> isHaveChildren() async {
    try {
      final count = await isar.childrenLocalModels.count();
      return count > 0;
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'isHaveChildren');
    }
    return false;
  }

  Future<bool?> isEmptyProfileData() async {
    try {
      if (await isHaveChildren() ?? false) {
        var data = await getCurrentChildren();
        if (data == null) return true;

        if ((data.gender == null || data.gender!.isEmpty) ||
            (data.gradeClass == null ||
                !(data.gradeClass! >= 1 && data.gradeClass! <= 6)) ||
            (data.dateBirth == null)) {
          return true;
        }
        return false;
      } else {
        return false;
      }
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'isEmptyProfileData');
    }

    return false;
  }

  Future<void> logoutFromLocal() async {
    try {
      await isarService.clearAllData();
      await isar.writeTxn(() async {
        await isar.childrenLocalModels.clear();
      });
      EpicLog.info('Children data deleted.');
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'logoutFromLocal');
    }
  }

  Future<List<BookHistoryLocalModel>> getBookHistories() async {
    try {
      // get data aja
      final localHistories =
          await isar.bookHistoryLocalModels.where().findAll();
      EpicLog.info(
          'Fetched ${localHistories.length} book histories from local.');
      return localHistories;
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'getBookHistories - clear local');
    }
    return [];
  }

  Future<BookHistoryLocalModel?> getBookHistoryById(String bookId) async {
    try {
      return await isar.bookHistoryLocalModels
          .where()
          .bookIdEqualTo(bookId)
          .findFirst();
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'getBookHistoryById');
    }
    return null;
  }

  Future<void> saveAllBookHistories({
    required List<BookHistoryLocalModel> bookHistories,
    bool isClear = false,
  }) async {
    try {
      await isar.writeTxn(() async {
        if (isClear) {
          await isar.bookHistoryLocalModels.clear();
          EpicLog.info('Existing book histories cleared locally.');
        }
        await isar.bookHistoryLocalModels.putAll(bookHistories);
        EpicLog.info('All book histories saved locally.');
      });
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'saveAllBookHistories');
    }
  }

  Future<void> updateBookHistory({
    required BookHistoryLocalModel bookHistory,
  }) async {
    try {
      await isar.writeTxn(() async {
        final existing = await isar.bookHistoryLocalModels
            .where()
            .bookIdEqualTo(bookHistory.bookId)
            .findFirst();

        if (existing != null) {
          // Reuse existing id to update row instead of inserting duplicates.
          bookHistory.id = existing.id;
        }

        await isar.bookHistoryLocalModels.put(bookHistory);
        EpicLog.info(
          'Book history for bookId ${bookHistory.bookId} saved locally.',
        );
      });
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'updateBookHistory');
    }
  }

  Future<void> updateFlashcardHistory({
    required FlashcardHistoryLocalModel flashcardHistory,
  }) async {
    try {
      await isar.writeTxn(() async {
        final existing = await isar.flashcardHistoryLocalModels
            .filter()
            .flashcardIdEqualTo(flashcardHistory.flashcardId)
            .findFirst();

        if (existing != null) {
          // pake id lama biar ke-update
          flashcardHistory.id = existing.id;
        }

        await isar.flashcardHistoryLocalModels.put(flashcardHistory);

        EpicLog.info(
          'Flashcard history for flashcardId ${flashcardHistory.flashcardId} saved locally.',
        );
      });
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'updateFlashcardHistory');
    }
  }

  Future<void> saveAllFlashcardHistories(
    List<FlashcardHistoryLocalModel> histories, {
    bool isClear = false,
  }) async {
    try {
      await isar.writeTxn(() async {
        if (isClear) {
          await isar.flashcardHistoryLocalModels.clear();
          EpicLog.info('Existing flashcard histories cleared locally.');
        }
        for (var history in histories) {
          final existing = await isar.flashcardHistoryLocalModels
              .filter()
              .flashcardIdEqualTo(history.flashcardId)
              .findFirst();

          if (existing != null) {
            history.id = existing.id;
          }

          await isar.flashcardHistoryLocalModels.put(history);
        }
        EpicLog.info('All flashcard histories saved locally.');
      });
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'saveAllFlashcardHistories');
    }
  }

  Future<FlashcardHistoryLocalModel?> getFlashcardHistoryById(
    String flashcardId,
  ) async {
    try {
      return await isar.flashcardHistoryLocalModels
          .filter()
          .flashcardIdEqualTo(flashcardId)
          .findFirst();
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'getFlashcardHistoryById');
    }
    return null;
  }

  Future<List<FlashcardHistoryLocalModel>> getAllFlashcardHistories() async {
    try {
      return await isar.flashcardHistoryLocalModels.where().findAll();
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'getAllFlashcardHistories');
    }
    return [];
  }
}

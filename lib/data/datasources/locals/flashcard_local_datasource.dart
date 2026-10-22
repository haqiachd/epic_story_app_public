import 'package:epic_story_app/core/services/isar_service.dart';
import 'package:epic_story_app/core/utils/epic_log.dart';
import 'package:epic_story_app/data/models/locals/flashcards/flashcard_local_model.dart';
import 'package:get/get.dart';
import 'package:isar_community/isar.dart';

class FlashCardLocalDatasource {
  final IsarService isarService = Get.find<IsarService>();
  Isar get isar => isarService.isar;

  Future<void> saveFlashcards({
    required List<FlashcardLocalModel> flashcards,
    bool isClear = false,
  }) async {
    try {
      await isar.writeTxn(() async {
        if (isClear) {
          await isar.flashcardLocalModels.clear();
        }
        await isar.flashcardLocalModels.putAll(flashcards);
      });
    } catch (ex, s) {
      EpicLog.exception(ex, s, 'Failed to save flashcards locally');
    }
  }

  Future<void> saveFlashcard({
    required FlashcardLocalModel flashcard,
  }) async {
    try {
      await isar.writeTxn(() async {
        await isar.flashcardLocalModels.put(flashcard);
      });
    } catch (ex, s) {
      EpicLog.exception(ex, s, 'Failed to save flashcard locally');
    }
  }
}

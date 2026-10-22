import 'dart:async';

import 'package:epic_story_app/core/utils/epic_log.dart';
import 'package:epic_story_app/data/models/locals/book_children_reaction_local_model.dart';
import 'package:epic_story_app/data/models/locals/book_histories_local_model.dart';
import 'package:epic_story_app/data/models/locals/book_local_model.dart';
import 'package:epic_story_app/data/models/locals/children_local_model.dart';
import 'package:epic_story_app/data/models/locals/flashcards/flashcard_history_local_model.dart';
import 'package:epic_story_app/data/models/locals/flashcards/flashcard_local_model.dart';
import 'package:get/get.dart';
import 'package:isar_community/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarService extends GetxService {
  Isar? _isar;
  Future<IsarService>? _initFuture;

  static const String _isarInstanceName = 'isar_instance';
  static const Duration _openTimeout = Duration(seconds: 20);

  Isar get isar {
    final instance = _isar;
    if (instance == null || !instance.isOpen) {
      throw StateError(
        'IsarService belum siap. Pastikan init() selesai sebelum akses database.',
      );
    }
    return instance;
  }

  Future<IsarService> init({bool clearData = false}) async {
    if (_initFuture != null) {
      return _initFuture!;
    }

    final initFuture = _initInternal(clearData: clearData);
    _initFuture = initFuture;

    try {
      return await initFuture;
    } catch (_) {
      _initFuture = null;
      rethrow;
    }
  }

  Future<IsarService> _initInternal({required bool clearData}) async {
    final existingInstance = Isar.getInstance(_isarInstanceName);
    if (existingInstance != null && existingInstance.isOpen) {
      _isar = existingInstance;
      EpicLog.print('Isar instance reused: $_isarInstanceName');
      return this;
    }

    final dir = await getApplicationDocumentsDirectory();

    for (var attempt = 1; attempt <= 2; attempt++) {
      try {
        EpicLog.print('Isar open attempt $attempt started');
        _isar = await Isar.open(
          [
            BookChildReactionLocalModelSchema,
            BookHistoryLocalModelSchema,
            BookLocalModelSchema,
            ChildrenLocalModelSchema,
            FlashcardLocalModelSchema,
            FlashcardHistoryLocalModelSchema,
          ],
          directory: dir.path,
          name: _isarInstanceName,
        ).timeout(_openTimeout);

        EpicLog.print('Isar open attempt $attempt succeeded');
        break;
      } on TimeoutException catch (ex, s) {
        EpicLog.exception(ex, s, this, 'init.timeout.attempt_$attempt');
        if (attempt == 2) rethrow;
      } catch (ex, s) {
        EpicLog.exception(ex, s, this, 'init.attempt_$attempt');
        if (attempt == 2) rethrow;
      }
    }

    if (_isar == null || !_isar!.isOpen) {
      throw StateError('Gagal membuka Isar instance $_isarInstanceName');
    }

    if (clearData) {
      await clearAllData();
    }

    return this;
  }

  Future<void> clearAllData() async {
    final instance = _isar;
    if (instance == null || !instance.isOpen) {
      EpicLog.warn('clearAllData skipped because Isar is not initialized');
      return;
    }

    await instance.writeTxn(() async {
      await instance.bookChildReactionLocalModels.clear();
      await instance.bookHistoryLocalModels.clear();
      await instance.bookLocalModels.clear();
      await instance.childrenLocalModels.clear();
      await instance.flashcardLocalModels.clear();
      await instance.flashcardHistoryLocalModels.clear();
    });
  }
}

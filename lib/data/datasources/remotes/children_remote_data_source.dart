import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/services/firebase_service.dart';
import 'package:epic_story_app/core/utils/epic_log.dart';
import 'package:epic_story_app/data/models/remotes/book_histories_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/children_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/flashcards/flashcard_history_remote_model.dart';
import 'package:get/get.dart';

class ChildrenRemoteDataSource {
  final FirebaseService fireService = Get.find<FirebaseService>();
  static const Duration _firestoreTimeout = Duration(seconds: 60);
  static const Duration _bookHistoryWriteTimeout = Duration(seconds: 12);
  static const Duration _bookReadIncrementTimeout = Duration(seconds: 4);
  static const Duration _flashcardHistoryWriteTimeout = Duration(seconds: 12);
  static const Duration _flashcardReadIncrementTimeout = Duration(seconds: 4);

  Future<void> _incrementBookReadCount({required String bookId}) async {
    try {
      await fireService.db.collection('books').doc(bookId).set(
        {
          'reads': FieldValue.increment(1),
        },
        SetOptions(merge: true),
      ).timeout(_bookReadIncrementTimeout);
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, '_incrementBookReadCount');
    }
  }

  Future<void> _incrementFlashcardReadCount(
      {required String flashcardId}) async {
    try {
      await fireService.db.collection('flashcards').doc(flashcardId).set(
        {
          'reads': FieldValue.increment(1),
        },
        SetOptions(merge: true),
      ).timeout(_flashcardReadIncrementTimeout);
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, '_incrementFlashcardReadCount');
    }
  }

  Future<ChildrenRemoteModel?> getCurrentChildrenRemote() async {
    try {
      final docRef = fireService.dbStudent;
      if (docRef == null) return null;

      var childrenDoc = await docRef.get().timeout(_firestoreTimeout);
      if (childrenDoc.exists) {
        var data = childrenDoc.data();
        if (data != null && data is Map<String, dynamic>) {
          return ChildrenRemoteModel.fromJson(data, childrenDoc.id);
        }
      }
      return null;
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'getCurrentChildrenRemote');
      return null;
    }
  }

  Future<bool> updateChildren({required ChildrenRemoteModel children}) async {
    try {
      await fireService.dbStudent
          ?.set(
            children.toJson(),
            SetOptions(merge: true),
          )
          .timeout(_firestoreTimeout);
      return true;
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'updateChildren');
      return false;
    }
  }

  bool isLoggedInFire() {
    return fireService.isLoggedIn();
  }

  Future<void> logoutFromFire() async {
    await fireService.logout();
  }

  Future<bool> updateBookHistory({
    required BookHistoriesRemoteModel bookHistory,
  }) async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) {
        EpicLog.print(
            'updateBookHistory - UID is null or empty in updateBookHistory');
        return false;
      }

      final docRef = fireService.db
          .collection('childrens')
          .doc(uid)
          .collection('children_details')
          .doc('book_histories');

      final docId = bookHistory.bookId;
      if (docId == null || docId.isEmpty) {
        EpicLog.print(
            'updateBookHistory - Book ID is null or empty in updateBookHistory');
        return false;
      }

      await docRef.set(
        {
          'histories': {
            docId: bookHistory.toJson(),
          }
        },
        SetOptions(merge: true),
      ).timeout(_bookHistoryWriteTimeout);

      // Keep analytics write non-blocking so history save does not get stuck.
      unawaited(_incrementBookReadCount(bookId: docId));

      return true;
    } on TimeoutException catch (ex, s) {
      EpicLog.exception(ex, s, this, 'updateBookHistory.timeout');
      return false;
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'updateBookHistory');
      return false;
    }
  }

  Future<void> createCollection() async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) {
        EpicLog.print(
            'createCollection - UID is null or empty in createCollection');
        return;
      }

      final docRef = fireService.db
          .collection('childrens')
          .doc(uid)
          .collection('children_details')
          .doc('read_histories');

      await docRef.set(
        {
          'histories': {},
        },
        SetOptions(merge: true),
      );
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'createCollection');
    }
  }

  Future<void> reactBook({
    required String bookId,
    required String emoticon,
    required bool isIncrement,
  }) async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) {
        EpicLog.print('reactBook - UID is null or empty in reactBook');
        return;
      }

      // increment reactions yang sesuai dengan emoticons di childrens
      final docRef = fireService.db.collection('books').doc(bookId);
      await docRef.set(
        {
          'reactions': {
            emoticon: isIncrement
                ? FieldValue.increment(1)
                : FieldValue.increment(-1),
          },
        },
        SetOptions(merge: true),
      );

      // increment reaction di children reactoins
      final childDocRef = fireService.db
          .collection('childrens')
          .doc(uid)
          .collection('children_details')
          .doc('book_reactions');

      await childDocRef.set(
        {
          'reactions': {
            bookId: {
              emoticon: isIncrement
                  ? FieldValue.increment(1)
                  : FieldValue.increment(-1),
              "updatedAt": Timestamp.now(),
            },
          },
        },
        SetOptions(merge: true),
      );
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'reactBook');
    }
  }

  Future<List<BookHistoriesRemoteModel>> getBookHistories() async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) {
        EpicLog.print(
            'getBookHistories - UID is null or empty in getBookHistories');
        return [];
      }

      final docRef = fireService.db
          .collection('childrens')
          .doc(uid)
          .collection('children_details')
          .doc('book_histories');

      final timedSnapshot = await docRef.get().timeout(_firestoreTimeout);
      if (timedSnapshot.exists) {
        final data = timedSnapshot.data();
        if (data != null && data['histories'] != null) {
          final historiesData = data['histories'] as Map<String, dynamic>;
          return historiesData.entries
              .map((entry) => BookHistoriesRemoteModel.fromJson(
                    entry.value as Map<String, dynamic>,
                    bookId: entry.key,
                  ))
              .toList();
        }
      }
      return [];
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'getBookHistories');
      return [];
    }
  }

  Stream<List<BookHistoriesRemoteModel>> streamBookHistories() {
    final uid = fireService.auth.currentUser?.uid;
    if (uid == null || uid.isEmpty) {
      EpicLog.print('streamBookHistories - UID is null or empty');
      return Stream.value([]);
    }

    final docRef = fireService.db
        .collection('childrens')
        .doc(uid)
        .collection('children_details')
        .doc('book_histories');

    return docRef.snapshots().map<List<BookHistoriesRemoteModel>>((snapshot) {
      if (!snapshot.exists) return [];
      final data = snapshot.data();
      if (data == null || data['histories'] == null) return [];
      final historiesData = data['histories'] as Map<String, dynamic>;
      return historiesData.entries
          .map((entry) => BookHistoriesRemoteModel.fromJson(
                entry.value as Map<String, dynamic>,
                bookId: entry.key,
              ))
          .toList();
    }).handleError((ex, s) {
      EpicLog.exception(ex, s, this, 'streamBookHistories');
    });
  }

  Future<List<FlashcardHistoryRemoteModel>> getFlashcardHistories() async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) {
        EpicLog.print(
            'getFlashcardHistories - UID is null or empty in getFlashcardHistories');
        return [];
      }

      EpicLog.print('source getFlashcardHistories - getFirestore');
      final docRef = fireService.db
          .collection('childrens')
          .doc(uid)
          .collection('children_details')
          .doc('flashcard_histories');

      final timedSnapshot = await docRef.get().timeout(_firestoreTimeout);
      if (timedSnapshot.exists) {
        final data = timedSnapshot.data();
        if (data != null && data['histories'] != null) {
          final historiesData = data['histories'] as Map<String, dynamic>;
          return historiesData.entries
              .map((entry) => FlashcardHistoryRemoteModel.fromJson(
                    entry.value as Map<String, dynamic>,
                    flashcardId: entry.key,
                  ))
              .toList();
        }
      }
      return [];
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'getFlashcardHistories');
      return [];
    }
  }

  Stream<List<FlashcardHistoryRemoteModel>> streamFlashcardHistories() {
    final uid = fireService.auth.currentUser?.uid;
    if (uid == null || uid.isEmpty) {
      EpicLog.print('streamFlashcardHistories - UID is null or empty');
      return Stream.value([]);
    }

    final docRef = fireService.db
        .collection('childrens')
        .doc(uid)
        .collection('children_details')
        .doc('flashcard_histories');

    return docRef
        .snapshots()
        .map<List<FlashcardHistoryRemoteModel>>((snapshot) {
      if (!snapshot.exists) return [];
      final data = snapshot.data();
      if (data == null || data['histories'] == null) return [];
      final historiesData = data['histories'] as Map<String, dynamic>;
      return historiesData.entries
          .map((entry) => FlashcardHistoryRemoteModel.fromJson(
                entry.value as Map<String, dynamic>,
                flashcardId: entry.key,
              ))
          .toList();
    }).handleError((ex, s) {
      EpicLog.exception(ex, s, this, 'streamFlashcardHistories');
    });
  }

  Future<List<FlashcardHistoryRemoteModel>> testGetFlashcardHistories() async {
    try {
      FirebaseFirestore.instance.terminate();
      await FirebaseFirestore.instance.clearPersistence();
      EpicLog.print('source getFlashcardHistories - step 1');
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) {
        EpicLog.print('source getFlashcardHistories - step 2');
        return [];
      }

      EpicLog.print('source getFlashcardHistories - step 3');
      final docRef = fireService.db
          .collection('childrens')
          .doc(uid)
          .collection('children_details')
          .doc('flashcard_histories');

      EpicLog.print('source getFlashcardHistories - step 4');
      final timedSnapshot = await docRef.get().timeout(_firestoreTimeout);
      if (timedSnapshot.exists) {
        final data = timedSnapshot.data();
        EpicLog.print('source getFlashcardHistories - step 5');
        if (data != null && data['histories'] != null) {
          EpicLog.print('source getFlashcardHistories - step 6');
          final historiesData = data['histories'] as Map<String, dynamic>;
          return historiesData.entries
              .map((entry) => FlashcardHistoryRemoteModel.fromJson(
                    entry.value as Map<String, dynamic>,
                    flashcardId: entry.key,
                  ))
              .toList();
        }
      }
      return [];
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'getFlashcardHistories');
      return [];
    }
  }

  Future<bool> updateFlashcardHistory({
    required FlashcardHistoryRemoteModel flashcardHistory,
  }) async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) {
        EpicLog.print(
            'updateFlashcardHistory - UID is null or empty in updateFlashcardHistory');
        return false;
      }

      // SORT HERE
      final sortedCards = [...?flashcardHistory.cards]
        ..sort((a, b) => (a.nPage ?? 0).compareTo(b.nPage ?? 0));

      var sortedFlashcard = flashcardHistory.copyWith(
        cards: sortedCards,
      );

      final docRef = fireService.db
          .collection('childrens')
          .doc(uid)
          .collection('children_details')
          .doc('flashcard_histories');

      final docId = sortedFlashcard.flashcardId;
      if (docId == null || docId.isEmpty) {
        EpicLog.print(
            'updateFlashcardHistory - Flashcard ID is null or empty in updateFlashcardHistory');
        return false;
      }

      await docRef.set(
        {
          'histories': {
            docId: sortedFlashcard.toJson(),
          }
        },
        SetOptions(merge: true),
      ).timeout(_flashcardHistoryWriteTimeout);

      // Keep analytics write non-blocking so history save does not get stuck.
      unawaited(_incrementFlashcardReadCount(flashcardId: docId));

      return true;
    } on TimeoutException catch (ex, s) {
      EpicLog.exception(ex, s, this, 'updateFlashcardHistory.timeout');
      return false;
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'updateFlashcardHistory');
      return false;
    }
  }
}

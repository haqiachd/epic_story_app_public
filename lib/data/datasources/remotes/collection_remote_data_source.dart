import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/services/firebase_service.dart';
import 'package:epic_story_app/core/utils/epic_log.dart';
import 'package:epic_story_app/data/models/remotes/book_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/children_collection_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/collection_book_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/collection_detail_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/collections/flashcard_collection_detail_item_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/collections/flashcard_collection_detail_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/collections/flashcard_collection_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/flashcards/flashcard_remote_model.dart';
import 'package:get/get.dart';

class CollectionRemoteDataSource {
  final FirebaseService fireService = Get.find<FirebaseService>();
  static const Duration _firestoreTimeout = Duration(seconds: 10);

  Future<void> createCollection({
    required ChildrenCollectionRemoteModel collection,
  }) async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) {
        EpicLog.print(
            'createCollection - UID is null or empty in createCollection');
        return;
      }
      final childrenDoc = fireService.db.collection('childrens').doc(uid);

      // Generate doc id from the detail subcollection
      final detailCollection = childrenDoc
          .collection('children_details')
          .doc('book_collections')
          .collection('collection_data');
      final generatedId = detailCollection.doc().id;

      // Upsert summary into children root document collections map
      final summary = ChildrenCollectionRemoteModel(
        id: generatedId,
        bgColor: collection.bgColor,
        nPages: collection.nPages,
        title: collection.title,
        nBooks: collection.nBooks,
        bookCovers: collection.bookCovers,
        categories: collection.categories,
        desc: collection.desc,
        createdAt: collection.createdAt,
        updatedAt: collection.updatedAt,
      );

      await childrenDoc.set(
        {
          'collections': {generatedId: summary.toJson()},
        },
        SetOptions(merge: true),
      ).timeout(_firestoreTimeout);

      // Persist detail document under children_details/book_collections/collection_data/{collectionId}
      final detail = CollectionDetailRemoteModel(
        id: generatedId,
        bgColor: collection.bgColor,
        nPages: collection.nPages,
        title: collection.title,
        nBooks: collection.nBooks,
        bookCovers: collection.bookCovers,
        categories: collection.categories,
        desc: collection.desc,
        createdAt: collection.createdAt,
        updatedAt: collection.updatedAt,
        books: {},
      );

      await detailCollection
          .doc(generatedId)
          .set(
            detail.toJson(),
            SetOptions(merge: true),
          )
          .timeout(_firestoreTimeout);
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'createCollection');
    }
  }

  Future<void> updateCollection({
    required ChildrenCollectionRemoteModel collection,
  }) async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) {
        EpicLog.print('updateCollection - UID is null or empty');
        return;
      }

      final collectionId = collection.id;
      if (collectionId == null || collectionId.isEmpty) {
        EpicLog.print('updateCollection - collectionId is null or empty');
        return;
      }

      final childrenDoc = fireService.db.collection('childrens').doc(uid);
      final detailDoc = childrenDoc
          .collection('children_details')
          .doc('book_collections')
          .collection('collection_data')
          .doc(collectionId);

      await childrenDoc.set(
        {
          'collections': {
            collectionId: {
              'bgColor': collection.bgColor,
              'title': collection.title,
              'desc': collection.desc,
              'updatedAt': Timestamp.now(),
            },
          },
        },
        SetOptions(merge: true),
      ).timeout(_firestoreTimeout);

      await detailDoc.set(
        {
          'bgColor': collection.bgColor,
          'title': collection.title,
          'desc': collection.desc,
          'updatedAt': Timestamp.now(),
        },
        SetOptions(merge: true),
      ).timeout(_firestoreTimeout);
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'updateCollection');
    }
  }

  Future<void> addBookToCollection({
    required String collectionId,
    required String bookId,
  }) async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) {
        EpicLog.print(
            'addBookToCollection - UID is null or empty in addBookToCollection');
        return;
      }

      // get book data from books collection
      final bookDoc = await fireService.db
          .collection('books')
          .doc(bookId)
          .get()
          .timeout(_firestoreTimeout);
      var bookDocData = bookDoc.data();
      var bookModel = bookDocData != null
          ? BookRemoteModel.fromJson(bookDocData, bookId)
          : null;

      var newBook = CollectionBookRemoteModel(
        id: bookId,
        title: bookModel?.title,
        coverUrl: bookModel?.bookCover,
        category: bookModel?.category,
        nPages: bookModel?.totalPages,
        summary: bookModel?.summary,
        totalQuiz: bookModel?.totalQuizes,
        completedQuiz: 0,
        createdAt: Timestamp.now(),
        updatedAt: Timestamp.now(),
      );

      final docRef = fireService.db
          .collection('childrens')
          .doc(uid)
          .collection('children_details')
          .doc('book_collections')
          .collection('collection_data')
          .doc(collectionId);

      await docRef.set(
        {
          'books': {
            bookId: newBook.toJson(),
          },
        },
        SetOptions(merge: true),
      ).timeout(_firestoreTimeout);

      final childrenData = fireService.db.collection('childrens').doc(uid);
      await childrenData.set(
        {
          'collections': {
            collectionId: {
              'nBooks': FieldValue.increment(1),
              'nPages': FieldValue.increment(bookModel?.totalPages ?? 0),
              'bookCovers': FieldValue.arrayUnion([bookModel?.bookCover ?? '']),
              'categories': FieldValue.arrayUnion([bookModel?.category ?? '']),
              'updatedAt': Timestamp.now(),
            },
          },
        },
        SetOptions(merge: true),
      ).timeout(_firestoreTimeout);
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'addBookToCollection');
    }
  }

  Future<void> removeBookFromCollection({
    required String collectionId,
    required String bookId,
  }) async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) return;

      final docRef = fireService.db
          .collection('childrens')
          .doc(uid)
          .collection('children_details')
          .doc('book_collections')
          .collection('collection_data')
          .doc(collectionId);

      final snap = await docRef.get().timeout(_firestoreTimeout);
      final data = snap.data();
      if (data == null) return;

      final booksMap = (data['books'] as Map<String, dynamic>?);
      final bookJson = booksMap?[bookId] as Map<String, dynamic>?;
      if (bookJson == null) return;

      final book = CollectionBookRemoteModel.fromJson(bookJson, bookId);

      await docRef.set(
        {
          'books': {
            bookId: FieldValue.delete(),
          },
        },
        SetOptions(merge: true),
      ).timeout(_firestoreTimeout);

      await fireService.db.collection('childrens').doc(uid).set(
        {
          'collections': {
            collectionId: {
              'nBooks': FieldValue.increment(-1),
              'nPages': FieldValue.increment(-(book.nPages ?? 0)),
              'bookCovers': book.coverUrl != null
                  ? FieldValue.arrayRemove([book.coverUrl])
                  : FieldValue.arrayRemove([]),
              'categories': book.category != null
                  ? FieldValue.arrayRemove([book.category])
                  : FieldValue.arrayRemove([]),
              'updatedAt': Timestamp.now(),
            },
          },
        },
        SetOptions(merge: true),
      ).timeout(_firestoreTimeout);
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'removeBookFromCollection');
    }
  }

  Future<void> removeCollection({
    required String collectionId,
  }) async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) return;

      final childrenDoc = fireService.db.collection('childrens').doc(uid);
      final detailDoc = childrenDoc
          .collection('children_details')
          .doc('book_collections')
          .collection('collection_data')
          .doc(collectionId);

      final batch = fireService.db.batch();
      batch.set(
        childrenDoc,
        {
          'collections': {
            collectionId: FieldValue.delete(),
          },
          'updatedAt': Timestamp.now(),
        },
        SetOptions(merge: true),
      );
      batch.delete(detailDoc);

      await batch.commit().timeout(_firestoreTimeout);
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'removeCollection');
    }
  }

  Future<CollectionDetailRemoteModel?> getCollectionDetail({
    required String collectionId,
  }) async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) return null;

      final docRef = fireService.db
          .collection('childrens')
          .doc(uid)
          .collection('children_details')
          .doc('book_collections')
          .collection('collection_data')
          .doc(collectionId);

      final snap = await docRef.get().timeout(_firestoreTimeout);
      final data = snap.data();
      if (data == null) return null;

      return CollectionDetailRemoteModel.fromJson(
        data,
        id: collectionId,
      );
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'getCollectionDetail');
      return null;
    }
  }

  Future<void> createFlashcardCollection({
    required FlashcardCollectionRemoteModel collection,
  }) async {
    try {
      EpicLog.print(
          'Creating flashcard collection with title: ${collection.title}');
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) {
        EpicLog.print('createFlashcardCollection - UID is null or empty');
        return;
      }

      final childrenDoc = fireService.db.collection('childrens').doc(uid);

      final detailCollection = childrenDoc
          .collection('children_details')
          .doc('flashcard_collections')
          .collection('flashcard_collection_data');

      final generatedId = detailCollection.doc().id;

      final summary = collection.copyWith(
        collectionId: generatedId,
        updatedAt: Timestamp.now(),
        createdAt: Timestamp.now(),
      );

      await childrenDoc.set(
        {
          'collectionFlashcards': {generatedId: summary.toJson()}
        },
        SetOptions(merge: true),
      ).timeout(_firestoreTimeout);

      final detail = FlashcardCollectionDetailRemoteModel(
        flashcardId: generatedId,
        title: collection.title,
        desc: collection.desc,
        bgColor: collection.bgColor,
        categories: collection.categories,
        totalFlashcard: collection.totalFlashcard ?? 0,
        totalCards: collection.totalCards ?? 0,
        totalQuiz: collection.totalQuiz ?? 0,
        completedQuiz: collection.completedQuiz ?? 0,
        createdAt: Timestamp.now(),
        updatedAt: Timestamp.now(),
        flashcards: const {},
      );

      await detailCollection
          .doc(generatedId)
          .set(
            detail.toJson(),
            SetOptions(merge: true),
          )
          .timeout(_firestoreTimeout);
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'createFlashcardCollection');
    }
  }

  Future<void> updateFlashcardCollection({
    required FlashcardCollectionRemoteModel collection,
  }) async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) {
        EpicLog.print('updateFlashcardCollection - UID is null or empty');
        return;
      }

      final collectionId = collection.collectionId;
      if (collectionId == null || collectionId.isEmpty) {
        EpicLog.print('updateFlashcardCollection - collectionId is null');
        return;
      }

      final childrenDoc = fireService.db.collection('childrens').doc(uid);
      final detailDoc = childrenDoc
          .collection('children_details')
          .doc('flashcard_collections')
          .collection('flashcard_collection_data')
          .doc(collectionId);

      await childrenDoc.set(
        {
          'collectionFlashcards': {
            collectionId: {
              'bgColor': collection.bgColor,
              'title': collection.title,
              'desc': collection.desc,
              'updatedAt': Timestamp.now(),
            }
          }
        },
        SetOptions(merge: true),
      ).timeout(_firestoreTimeout);

      await detailDoc.set(
        {
          'bgColor': collection.bgColor,
          'title': collection.title,
          'desc': collection.desc,
          'updatedAt': Timestamp.now(),
        },
        SetOptions(merge: true),
      ).timeout(_firestoreTimeout);
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'updateFlashcardCollection');
    }
  }

  Future<void> addFlashcardToCollection({
    required String collectionId,
    required String flashcardId,
  }) async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) {
        EpicLog.print('addFlashcardToCollection - UID is null or empty');
        return;
      }

      // get book data from books collection
      final flashCardDoc = await fireService.db
          .collection('flashcards')
          .doc(flashcardId)
          .get()
          .timeout(_firestoreTimeout);
      var flashCardDocData = flashCardDoc.data();
      var flashCardModel = flashCardDocData != null
          ? FlashcardRemoteModel.fromJson(flashCardDocData,
              flashcardId: flashcardId)
          : null;

      final docRef = fireService.db
          .collection('childrens')
          .doc(uid)
          .collection('children_details')
          .doc('flashcard_collections')
          .collection('flashcard_collection_data')
          .doc(collectionId);

      var collFlashItem = FlashcardCollectionItemRemoteModel(
        flashcardId: flashcardId,
        title: flashCardModel?.title,
        summary: flashCardModel?.summary,
        category: flashCardModel?.category,
        totalCards: flashCardModel?.totalCards,
        totalQuiz: flashCardModel?.totalQuiz,
        completedQuiz: 0,
        createdAt: Timestamp.now(),
        updatedAt: Timestamp.now(),
      );

      await docRef.set(
        {
          'flashcards': {
            flashcardId: collFlashItem.toJson(),
          },
        },
        SetOptions(merge: true),
      ).timeout(_firestoreTimeout);

      await fireService.db.collection('childrens').doc(uid).set(
        {
          'collectionFlashcards': {
            collectionId: {
              'totalFlashcard': FieldValue.increment(1),
              'totalCards':
                  FieldValue.increment(flashCardModel?.totalCards ?? 0),
              'totalQuiz': FieldValue.increment(flashCardModel?.totalQuiz ?? 0),
              'categories': flashCardModel?.category != null
                  ? FieldValue.arrayUnion([flashCardModel?.category ?? ''])
                  : FieldValue.arrayUnion([]),
              'updatedAt': Timestamp.now(),
            }
          }
        },
        SetOptions(merge: true),
      ).timeout(_firestoreTimeout);
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'addFlashcardToCollection');
    }
  }

  Future<void> removeFlashcardFromCollection({
    required String collectionId,
    required String flashcardId,
  }) async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) return;

      final docRef = fireService.db
          .collection('childrens')
          .doc(uid)
          .collection('children_details')
          .doc('flashcard_collections')
          .collection('flashcard_collection_data')
          .doc(collectionId);

      final snap = await docRef.get().timeout(_firestoreTimeout);
      final data = snap.data();
      if (data == null) return;

      final flashcardsMap = data['flashcards'] as Map<String, dynamic>?;
      final flashcardJson =
          flashcardsMap?[flashcardId] as Map<String, dynamic>?;
      final stored = FlashcardCollectionItemRemoteModel.fromJson(
        flashcardJson,
        id: flashcardId,
      );

      await docRef.set(
        {
          'flashcards': {flashcardId: FieldValue.delete()},
        },
        SetOptions(merge: true),
      ).timeout(_firestoreTimeout);

      await fireService.db.collection('childrens').doc(uid).set(
        {
          'collectionFlashcards': {
            collectionId: {
              'totalFlashcard': FieldValue.increment(-1),
              'totalCards': FieldValue.increment(-(stored.totalCards ?? 0)),
              'totalQuiz': FieldValue.increment(-(stored.totalQuiz ?? 0)),
              'completedQuiz': FieldValue.increment(
                -(stored.completedQuiz ?? 0),
              ),
              'categories': stored.category != null
                  ? FieldValue.arrayRemove([stored.category])
                  : FieldValue.arrayRemove([]),
              'updatedAt': Timestamp.now(),
            }
          }
        },
        SetOptions(merge: true),
      ).timeout(_firestoreTimeout);
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'removeFlashcardFromCollection');
    }
  }

  Future<void> removeFlashcardCollection({
    required String collectionId,
  }) async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) return;

      final childrenDoc = fireService.db.collection('childrens').doc(uid);
      final detailDoc = childrenDoc
          .collection('children_details')
          .doc('flashcard_collections')
          .collection('flashcard_collection_data')
          .doc(collectionId);

      final batch = fireService.db.batch();
      batch.set(
        childrenDoc,
        {
          'collectionFlashcards': {
            collectionId: FieldValue.delete(),
          },
          'updatedAt': Timestamp.now(),
        },
        SetOptions(merge: true),
      );
      batch.delete(detailDoc);

      await batch.commit().timeout(_firestoreTimeout);
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'removeFlashcardCollection');
    }
  }

  Future<FlashcardCollectionDetailRemoteModel?> getFlashcardCollectionDetail({
    required String collectionId,
  }) async {
    try {
      final uid = fireService.auth.currentUser?.uid;
      if (uid == null || uid.isEmpty) return null;

      final docRef = fireService.db
          .collection('childrens')
          .doc(uid)
          .collection('children_details')
          .doc('flashcard_collections')
          .collection('flashcard_collection_data')
          .doc(collectionId);

      final snap = await docRef.get().timeout(_firestoreTimeout);
      final data = snap.data();
      if (data == null) return null;

      return FlashcardCollectionDetailRemoteModel.fromJson(
        data,
        id: collectionId,
      );
    } catch (ex, s) {
      EpicLog.exception(ex, s, this, 'getFlashcardCollectionDetail');
      return null;
    }
  }
}

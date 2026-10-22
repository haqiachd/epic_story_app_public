import 'package:epic_story_app/domain/entities/book_histories_entity.dart';
import 'package:epic_story_app/domain/entities/children_entity.dart';
import 'package:epic_story_app/domain/entities/flashcards/flashcard_history_entity.dart';

abstract class ChildrenRepository {
  Future<bool> addOrUpdateChildrenLocal(ChildrenEntity? children);
  Future<bool> addOrUpdateChildrenRemote(ChildrenEntity? children);
  Future<void> syncChildrenData();
  Future<ChildrenEntity?> getCurrentChildren();
  Future<ChildrenEntity?> getChildrenRemoteModel();
  Future<bool?> isEmptyProfileData();
  Future<bool> isLogged();
  Future<void> logout();
  Future<void> updateBookHistory({
    required BookHistoryEntity bookHistory,
    bool pushToRemote = false,
  });
  Future<void> reactBook({
    required String bookId,
    required String emoticon,
    required bool isIncrement,
  });
  Future<List<BookHistoryEntity>> getBookHistories({
    bool refreshLocal = false,
  });
  Stream<List<BookHistoryEntity>> streamBookHistories();
  Future<BookHistoryEntity?> getBookHistoryById(String bookId);
  Future<List<FlashcardHistoryEntity>> getFlashcardHistories({
    bool refreshLocal = false,
  });
  Stream<List<FlashcardHistoryEntity>> streamFlashcardHistories();
  Future<List<FlashcardHistoryEntity>> testGetFlashcardHistories({
    bool refreshLocal = false,
  });
  Future<bool> updateFlashcardHistory({
    required FlashcardHistoryEntity flashcardHistory,
    bool pushToRemote = false,
  });
  Future<FlashcardHistoryEntity?> getFlashcardHistoryById(String flashcardId);
}

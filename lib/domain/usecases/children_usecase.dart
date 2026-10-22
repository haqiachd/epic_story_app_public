import 'package:epic_story_app/domain/entities/book_histories_entity.dart';
import 'package:epic_story_app/domain/entities/children_entity.dart';
import 'package:epic_story_app/domain/entities/flashcards/flashcard_history_entity.dart';
import 'package:epic_story_app/domain/repositories/children_repository.dart';

class ChildrenUsecase {
  final ChildrenRepository _repository;

  ChildrenUsecase(this._repository);

  Future<bool> addOrUpdateChildrenLocal({ChildrenEntity? children}) {
    return _repository.addOrUpdateChildrenLocal(children);
  }

  Future<bool> addOrUpdateChildrenRemote({ChildrenEntity? children}) {
    return _repository.addOrUpdateChildrenRemote(children);
  }

  Future<void> syncChildrenData() {
    return _repository.syncChildrenData();
  }

  Future<ChildrenEntity?> getCurrentChildren() {
    return _repository.getCurrentChildren();
  }

  Future<bool?> isEmptyProfileData() {
    return _repository.isEmptyProfileData();
  }

  Future<bool> isLogged() {
    return _repository.isLogged();
  }

  Future<void> logout() {
    return _repository.logout();
  }

  Future<ChildrenEntity?> getChildrenRemoteModel() {
    return _repository.getChildrenRemoteModel();
  }

  Future<void> updateBookHistory({
    required BookHistoryEntity bookHistory,
    bool pushToRemote = false,
  }) {
    return _repository.updateBookHistory(
      bookHistory: bookHistory,
      pushToRemote: pushToRemote,
    );
  }

  Future<void> reactBook({
    required String bookId,
    required String emoticon,
    required bool isIncrement,
  }) {
    return _repository.reactBook(
      bookId: bookId,
      emoticon: emoticon,
      isIncrement: isIncrement,
    );
  }

  Future<bool> updateFlashcardHistory({
    required FlashcardHistoryEntity flashcardHistory,
    bool pushToRemote = false,
  }) {
    return _repository.updateFlashcardHistory(
      flashcardHistory: flashcardHistory,
      pushToRemote: pushToRemote,
    );
  }

  Future<List<FlashcardHistoryEntity>> getFlashcardHistories({
    bool refreshLocal = false,
  }) {
    return _repository.getFlashcardHistories(refreshLocal: refreshLocal);
  }

  Stream<List<FlashcardHistoryEntity>> streamFlashcardHistories() {
    return _repository.streamFlashcardHistories();
  }

  Future<List<FlashcardHistoryEntity>> testGetFlashcardHistories({
    bool refreshLocal = false,
  }) {
    return _repository.testGetFlashcardHistories(refreshLocal: refreshLocal);
  }

  Future<FlashcardHistoryEntity?> getFlashcardHistoryById(
    String flashcardId,
  ) {
    return _repository.getFlashcardHistoryById(flashcardId);
  }

  Future<List<BookHistoryEntity>> getBookHistories({
    bool refreshLocal = false,
  }) {
    return _repository.getBookHistories(refreshLocal: refreshLocal);
  }

  Stream<List<BookHistoryEntity>> streamBookHistories() {
    return _repository.streamBookHistories();
  }

  Future<BookHistoryEntity?> getBookHistoryById(String bookId) {
    return _repository.getBookHistoryById(bookId);
  }
}

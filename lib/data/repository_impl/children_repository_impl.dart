import 'package:epic_story_app/core/utils/epic_log.dart';
import 'package:epic_story_app/data/datasources/locals/children_local_data_source.dart';
import 'package:epic_story_app/data/datasources/remotes/children_remote_data_source.dart';
import 'package:epic_story_app/data/models/mappers/book_histories_mapper.dart';
import 'package:epic_story_app/data/models/mappers/children_mapper.dart';
import 'package:epic_story_app/data/models/mappers/flashcards/flashcard_history_mapper.dart';
import 'package:epic_story_app/domain/entities/book_histories_entity.dart';
import 'package:epic_story_app/domain/entities/children_entity.dart';
import 'package:epic_story_app/domain/entities/flashcards/flashcard_history_entity.dart';
import 'package:epic_story_app/domain/repositories/children_repository.dart';

class ChildrenRepositoryImpl extends ChildrenRepository {
  final ChildrenRemoteDataSource childrenRemoteDataSource;
  final ChildrenLocalDataSource childrenLocalDataSource;

  ChildrenRepositoryImpl({
    required this.childrenRemoteDataSource,
    required this.childrenLocalDataSource,
  });

  @override
  Future<bool> addOrUpdateChildrenLocal(ChildrenEntity? children) async {
    if (children == null) return false;
    var newChildren = children.copyWith(
      updatedAt: DateTime.now(),
    );
    var childrenLocal = ChildrenMapper.entityToLocal(newChildren);
    return await childrenLocalDataSource.addOrUpdateChildren(childrenLocal);
  }

  @override
  Future<bool> addOrUpdateChildrenRemote(ChildrenEntity? children) async {
    if (children == null) return false;
    var newChildren = children.copyWith(
      updatedAt: DateTime.now(),
    );
    var childrenRemote = ChildrenMapper.entityToRemote(newChildren);
    return await childrenRemoteDataSource.updateChildren(
      children: childrenRemote,
    );
  }

  Future<bool> _handleAfterSignIn() async {
    var childrenData =
        await childrenRemoteDataSource.getCurrentChildrenRemote();
    if (childrenData != null) {
      return await childrenLocalDataSource.addOrUpdateChildren(
        ChildrenMapper.remoteToLocal(childrenData),
      );
    }
    return false;
  }

  @override
  Future<void> syncChildrenData() async {
    if (await isLogged()) {
      await _handleAfterSignIn();
    }
  }

  @override
  Future<bool?> isEmptyProfileData() async {
    return await childrenLocalDataSource.isEmptyProfileData();
  }

  @override
  Future<ChildrenEntity?> getCurrentChildren() async {
    var childrenLocal = await childrenLocalDataSource.getCurrentChildren();
    if (childrenLocal != null) {
      return ChildrenMapper.localToEntity(childrenLocal);
    }
    return null;
  }

  @override
  Future<bool> isLogged() async {
    bool isLoginFire = childrenRemoteDataSource.isLoggedInFire();
    bool isLoggedInLocal =
        await childrenLocalDataSource.isHaveChildren() ?? false;
    if (!isLoginFire || !isLoggedInLocal) {
      await logout();
      return false;
    }
    return true;
  }

  @override
  Future<void> logout() async {
    await childrenRemoteDataSource.logoutFromFire();
    await childrenLocalDataSource.logoutFromLocal();
  }

  @override
  Future<ChildrenEntity?> getChildrenRemoteModel() async {
    final childrenRemoteModel =
        await childrenRemoteDataSource.getCurrentChildrenRemote();
    await childrenLocalDataSource.addOrUpdateChildren(
      ChildrenMapper.remoteToLocal(childrenRemoteModel!),
    );
    return ChildrenMapper.remoteToEntity(childrenRemoteModel);
  }

  @override
  Future<void> updateBookHistory({
    required BookHistoryEntity bookHistory,
    bool pushToRemote = false,
  }) async {
    await childrenLocalDataSource.updateBookHistory(
      bookHistory: BookHistoriesMapper.entityToLocal(bookHistory),
    );

    if (!pushToRemote) {
      return;
    }

    final isUpdated = await childrenRemoteDataSource.updateBookHistory(
      bookHistory: BookHistoriesMapper.entityToRemote(bookHistory),
    );
    EpicLog.debug(
        'pushHistoryToFirestore - Book history update to remote ${isUpdated ? 'succeeded' : 'failed'} for bookId ${bookHistory.bookId}');
    if (!isUpdated) {
      EpicLog.debug(
          'updateBookHistory - remote push failed, local data already saved for bookId ${bookHistory.bookId}');
    }
  }

  @override
  Future<void> reactBook({
    required String bookId,
    required String emoticon,
    required bool isIncrement,
  }) async {
    return await childrenRemoteDataSource.reactBook(
      bookId: bookId,
      emoticon: emoticon,
      isIncrement: isIncrement,
    );
  }

  @override
  Future<bool> updateFlashcardHistory({
    required FlashcardHistoryEntity flashcardHistory,
    bool pushToRemote = false,
  }) async {
    await childrenLocalDataSource.updateFlashcardHistory(
      flashcardHistory: FlashcardHistoryMapper.entityToLocal(flashcardHistory),
    );

    if (!pushToRemote) {
      return true;
    }

    final isUpdated = await childrenRemoteDataSource.updateFlashcardHistory(
      flashcardHistory: FlashcardHistoryMapper.entityToRemote(flashcardHistory),
    );
    if (!isUpdated) {
      EpicLog.debug(
          'updateFlashcardHistory - remote push failed, local data already saved for flashcardId ${flashcardHistory.flashcardId}');
    }

    return isUpdated;
  }

  @override
  Future<List<FlashcardHistoryEntity>> getFlashcardHistories({
    bool refreshLocal = false,
  }) async {
    EpicLog.debug('repo getFlashcardHistories - step 1');
    if (refreshLocal) {
      EpicLog.debug('repo getFlashcardHistories - step 2');
      var local = await childrenLocalDataSource.getAllFlashcardHistories();
      if (local.isNotEmpty) {
        return FlashcardHistoryMapper.localListToEntityList(local);
      }
    }
    EpicLog.debug('repo getFlashcardHistories - step 3');
    var flashcardHistoriesRemote =
        await childrenRemoteDataSource.getFlashcardHistories();
    EpicLog.debug('repo getFlashcardHistories - step 4');
    if (flashcardHistoriesRemote.isNotEmpty) {
      EpicLog.debug('repo getFlashcardHistories - step 5');
      var flashcardHistoriesLocal =
          FlashcardHistoryMapper.remoteListToLocalList(
              flashcardHistoriesRemote);
      await childrenLocalDataSource.saveAllFlashcardHistories(
        flashcardHistoriesLocal,
        isClear: true,
      );
      EpicLog.debug('repo getFlashcardHistories - step 6');
      return FlashcardHistoryMapper.remoteListToEntityList(
          flashcardHistoriesRemote);
    }
    return [];
  }

  @override
  Future<FlashcardHistoryEntity?> getFlashcardHistoryById(
    String flashcardId,
  ) async {
    var flashcardHistoryLocal =
        await childrenLocalDataSource.getFlashcardHistoryById(
      flashcardId,
    );
    if (flashcardHistoryLocal != null) {
      EpicLog.debug(
          'getFlashcardHistoryById - Flashcard history found locally for flashcardId $flashcardId, claimed rewards: ${flashcardHistoryLocal.claimedRewards}');
      return FlashcardHistoryMapper.localToEntity(flashcardHistoryLocal);
    }

    EpicLog.debug(
        'getFlashcardHistoryById - No flashcard history found locally for flashcardId $flashcardId, fetching from remote...');
    return null;
  }

  @override
  Future<List<BookHistoryEntity>> getBookHistories({
    bool refreshLocal = false,
  }) async {
    if (refreshLocal) {
      var local = await childrenLocalDataSource.getBookHistories();
      if (local.isNotEmpty) {
        return BookHistoriesMapper.localListToEntityList(local);
      }
    }
    var bookHistoriesRemote = await childrenRemoteDataSource.getBookHistories();
    if (bookHistoriesRemote.isNotEmpty) {
      var bookHistoriesLocal =
          BookHistoriesMapper.remoteListToLocalList(bookHistoriesRemote);
      await childrenLocalDataSource.saveAllBookHistories(
        bookHistories: bookHistoriesLocal,
        isClear: true,
      );
      return BookHistoriesMapper.remoteListToEntityList(bookHistoriesRemote);
    }
    return [];
  }

  @override
  Future<BookHistoryEntity?> getBookHistoryById(String bookId) async {
    var bookHistoryLocal =
        await childrenLocalDataSource.getBookHistoryById(bookId);
    if (bookHistoryLocal != null) {
      return BookHistoriesMapper.localToEntity(bookHistoryLocal);
    }

    EpicLog.debug(
        'getBookHistoryById - No book history found locally for bookId $bookId, fetching from remote...');
    return null;
  }

  @override
  Future<List<FlashcardHistoryEntity>> testGetFlashcardHistories({
    bool refreshLocal = false,
  }) async {
    EpicLog.debug('repo getFlashcardHistories - step 1');
    if (refreshLocal) {
      EpicLog.debug('repo getFlashcardHistories - step 2');
      var local = await childrenLocalDataSource.getAllFlashcardHistories();
      if (local.isNotEmpty) {
        return FlashcardHistoryMapper.localListToEntityList(local);
      }
    }
    EpicLog.debug('repo getFlashcardHistories - step 3');
    var flashcardHistoriesRemote =
        await childrenRemoteDataSource.testGetFlashcardHistories();
    EpicLog.debug('repo getFlashcardHistories - step 4');
    if (flashcardHistoriesRemote.isNotEmpty) {
      EpicLog.debug('repo getFlashcardHistories - step 5');
      var flashcardHistoriesLocal =
          FlashcardHistoryMapper.remoteListToLocalList(
              flashcardHistoriesRemote);
      await childrenLocalDataSource.saveAllFlashcardHistories(
        flashcardHistoriesLocal,
        isClear: true,
      );
      EpicLog.debug('repo getFlashcardHistories - step 6');
      return FlashcardHistoryMapper.remoteListToEntityList(
          flashcardHistoriesRemote);
    }
    return [];
  }

  @override
  Stream<List<BookHistoryEntity>> streamBookHistories() {
    return childrenRemoteDataSource.streamBookHistories().map(
          (remoteList) =>
              BookHistoriesMapper.remoteListToEntityList(remoteList),
        );
  }

  @override
  Stream<List<FlashcardHistoryEntity>> streamFlashcardHistories() {
    return childrenRemoteDataSource.streamFlashcardHistories().map(
          (remoteList) =>
              FlashcardHistoryMapper.remoteListToEntityList(remoteList),
        );
  }
}

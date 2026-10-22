import 'package:epic_story_app/core/utils/timestamp_converter.dart';
import 'package:epic_story_app/data/models/locals/book_histories_local_model.dart';
import 'package:epic_story_app/data/models/mappers/book_history_quiz_mapper.dart';
import 'package:epic_story_app/data/models/remotes/book_histories_remote_model.dart';
import 'package:epic_story_app/domain/entities/book_histories_entity.dart';

class BookHistoriesMapper {
  // Entity -> Local
  static BookHistoryLocalModel entityToLocal(BookHistoryEntity entity) {
    return BookHistoryLocalModel(
      bookId: entity.bookId,
      title: entity.title,
      bookCover: entity.bookCover,
      totalPages: entity.totalPages,
      readPages: entity.readPages,
      isFinished: entity.isFinished,
      startedAt: entity.startedAt,
      lastReadAt: entity.lastReadAt,
      finishedAt: entity.finishedAt,
      totalReadingSeconds: entity.totalReadingSeconds,
      isHaveQuiz: entity.isHaveQuiz,
      totalQuizes: entity.totalQuizes,
      completedQuizes: entity.completedQuizes,
      quiz: entity.quiz != null
          ? BookHistoryQuizMapper.entityToLocal(entity.quiz!)
          : null,
      category: entity.category,
      claimedRewards: entity.claimedRewards,
    );
  }

  // Entity -> Remote
  static BookHistoriesRemoteModel entityToRemote(BookHistoryEntity entity) {
    return BookHistoriesRemoteModel(
      bookId: entity.bookId,
      title: entity.title,
      bookCover: entity.bookCover,
      totalPages: entity.totalPages,
      readPages: entity.readPages,
      isFinished: entity.isFinished,
      startedAt: TimestampConverter.fromDateTime(entity.startedAt),
      lastReadAt: TimestampConverter.fromDateTime(entity.lastReadAt),
      finishedAt: TimestampConverter.fromDateTime(entity.finishedAt),
      totalReadingSeconds: entity.totalReadingSeconds,
      isHaveQuiz: entity.isHaveQuiz,
      totalQuizes: entity.totalQuizes,
      completedQuizes: entity.completedQuizes,
      quiz: entity.quiz != null
          ? BookHistoryQuizMapper.entityToRemote(entity.quiz!)
          : null,
      category: entity.category,
      claimedRewards: entity.claimedRewards,
    );
  }

  // Local -> Entity
  static BookHistoryEntity localToEntity(BookHistoryLocalModel model) {
    return BookHistoryEntity(
      bookId: model.bookId,
      title: model.title,
      bookCover: model.bookCover,
      totalPages: model.totalPages,
      readPages: model.readPages,
      isFinished: model.isFinished,
      startedAt: model.startedAt,
      lastReadAt: model.lastReadAt,
      finishedAt: model.finishedAt,
      totalReadingSeconds: model.totalReadingSeconds,
      isHaveQuiz: model.isHaveQuiz,
      totalQuizes: model.totalQuizes,
      completedQuizes: model.completedQuizes,
      quiz: model.quiz != null
          ? BookHistoryQuizMapper.localToEntity(model.quiz!)
          : null,
      category: model.category,
      claimedRewards: model.claimedRewards,
    );
  }

  // Local -> Remote
  static BookHistoriesRemoteModel localToRemote(BookHistoryLocalModel model) {
    return BookHistoriesRemoteModel(
      bookId: model.bookId,
      title: model.title,
      bookCover: model.bookCover,
      totalPages: model.totalPages,
      readPages: model.readPages,
      isFinished: model.isFinished,
      startedAt: TimestampConverter.fromDateTime(model.startedAt),
      lastReadAt: TimestampConverter.fromDateTime(model.lastReadAt),
      finishedAt: TimestampConverter.fromDateTime(model.finishedAt),
      totalReadingSeconds: model.totalReadingSeconds,
      isHaveQuiz: model.isHaveQuiz,
      totalQuizes: model.totalQuizes,
      completedQuizes: model.completedQuizes,
      quiz: model.quiz != null
          ? BookHistoryQuizMapper.localToRemote(model.quiz!)
          : null,
      category: model.category,
      claimedRewards: model.claimedRewards,
    );
  }

  // Remote -> Entity
  static BookHistoryEntity remoteToEntity(BookHistoriesRemoteModel model) {
    return BookHistoryEntity(
      bookId: model.bookId,
      title: model.title,
      bookCover: model.bookCover,
      totalPages: model.totalPages,
      readPages: model.readPages,
      isFinished: model.isFinished,
      startedAt: TimestampConverter.toDateTime(model.startedAt),
      lastReadAt: TimestampConverter.toDateTime(model.lastReadAt),
      finishedAt: TimestampConverter.toDateTime(model.finishedAt),
      totalReadingSeconds: model.totalReadingSeconds,
      isHaveQuiz: model.isHaveQuiz,
      totalQuizes: model.totalQuizes,
      completedQuizes: model.completedQuizes,
      quiz: model.quiz != null
          ? BookHistoryQuizMapper.remoteToEntity(model.quiz!)
          : null,
      category: model.category,
      claimedRewards: model.claimedRewards,
    );
  }

  // Remote -> Local
  static BookHistoryLocalModel remoteToLocal(BookHistoriesRemoteModel model) {
    return BookHistoryLocalModel(
      bookId: model.bookId,
      title: model.title,
      bookCover: model.bookCover,
      totalPages: model.totalPages,
      readPages: model.readPages,
      isFinished: model.isFinished,
      startedAt: TimestampConverter.toDateTime(model.startedAt),
      lastReadAt: TimestampConverter.toDateTime(model.lastReadAt),
      finishedAt: TimestampConverter.toDateTime(model.finishedAt),
      totalReadingSeconds: model.totalReadingSeconds,
      isHaveQuiz: model.isHaveQuiz,
      totalQuizes: model.totalQuizes,
      completedQuizes: model.completedQuizes,
      quiz: model.quiz != null
          ? BookHistoryQuizMapper.remoteToLocal(model.quiz!)
          : null,
      category: model.category,
      claimedRewards: model.claimedRewards,
    );
  }

  // List helpers
  static List<BookHistoryLocalModel> entityListToLocalList(
    List<BookHistoryEntity> list,
  ) =>
      list.map(entityToLocal).toList();

  static List<BookHistoriesRemoteModel> entityListToRemoteList(
    List<BookHistoryEntity> list,
  ) =>
      list.map(entityToRemote).toList();

  static List<BookHistoryEntity> localListToEntityList(
    List<BookHistoryLocalModel> list,
  ) =>
      list.map(localToEntity).toList();

  static List<BookHistoriesRemoteModel> localListToRemoteList(
    List<BookHistoryLocalModel> list,
  ) =>
      list.map(localToRemote).toList();

  static List<BookHistoryLocalModel> remoteListToLocalList(
    List<BookHistoriesRemoteModel> list,
  ) =>
      list.map(remoteToLocal).toList();

  static List<BookHistoryEntity> remoteListToEntityList(
    List<BookHistoriesRemoteModel> list,
  ) =>
      list.map(remoteToEntity).toList();
}

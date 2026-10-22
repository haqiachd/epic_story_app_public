import 'package:epic_story_app/core/utils/timestamp_converter.dart';
import 'package:epic_story_app/data/models/locals/book_local_model.dart';
import 'package:epic_story_app/data/models/locals/book_page_local_model.dart';
import 'package:epic_story_app/data/models/locals/book_reaction_local_model.dart';
import 'package:epic_story_app/data/models/remotes/book_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/book_page_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/book_reaction_remote_model.dart';
import 'package:epic_story_app/domain/entities/book_entity.dart';
import 'package:epic_story_app/domain/entities/book_page_entity.dart';
import 'package:epic_story_app/domain/entities/book_reaction_enttiy.dart';

class BookMapper {
  // Entity -> Local
  static BookLocalModel entityToLocal(BookEntity entity) {
    return BookLocalModel(
      bookId: entity.bookId,
      bookAsset: entity.bookAsset,
      bookCover: entity.bookCover,
      category: entity.category,
      createdAt: entity.createdAt,
      pages: entity.pages?.map(_pageEntityToLocal).toList(),
      reactions: _reactionEntityToLocal(entity.reactions),
      title: entity.title,
      totalPages: entity.totalPages,
      updatedAt: entity.updatedAt,
      sizeInBytes: entity.sizeInBytes,
      reads: entity.reads,
      summary: entity.summary,
      isHaveQuiz: entity.isHaveQuiz,
      totalQuizes: entity.totalQuizes,
      isGenerateQuizSupported: entity.isGenerateQuizSupported,
      quizType: entity.quizType,
      rewards: entity.rewards,
    );
  }

  // Entity -> Remote
  static BookRemoteModel entityToRemote(BookEntity entity) {
    return BookRemoteModel(
      bookId: entity.bookId,
      bookAsset: entity.bookAsset,
      bookCover: entity.bookCover,
      category: entity.category,
      createdAt: TimestampConverter.fromDateTime(entity.createdAt),
      pages: entity.pages?.map(_pageEntityToRemote).toList(),
      reactions: _reactionEntityToRemote(entity.reactions),
      title: entity.title,
      totalPages: entity.totalPages,
      updatedAt: TimestampConverter.fromDateTime(entity.updatedAt),
      sizeInBytes: entity.sizeInBytes,
      reads: entity.reads,
      summary: entity.summary,
      isHaveQuiz: entity.isHaveQuiz,
      totalQuizes: entity.totalQuizes,
      isGenerateQuizSupported: entity.isGenerateQuizSupported,
      quizType: entity.quizType,
      rewards: entity.rewards,
    );
  }

  // Local -> Entity
  static BookEntity localToEntity(BookLocalModel model) {
    return BookEntity(
      bookId: model.bookId,
      bookAsset: model.bookAsset,
      bookCover: model.bookCover,
      category: model.category,
      createdAt: model.createdAt,
      pages: model.pages?.map(_pageLocalToEntity).toList(),
      reactions: _reactionLocalToEntity(model.reactions),
      title: model.title,
      totalPages: model.totalPages,
      updatedAt: model.updatedAt,
      sizeInBytes: model.sizeInBytes,
      reads: model.reads,
      summary: model.summary,
      isHaveQuiz: model.isHaveQuiz,
      totalQuizes: model.totalQuizes,
      isGenerateQuizSupported: model.isGenerateQuizSupported,
      quizType: model.quizType,
      rewards: model.rewards,
    );
  }

  // Local -> Remote
  static BookRemoteModel localToRemote(BookLocalModel model) {
    return BookRemoteModel(
      bookId: model.bookId,
      bookAsset: model.bookAsset,
      bookCover: model.bookCover,
      category: model.category,
      createdAt: TimestampConverter.fromDateTime(model.createdAt),
      pages: model.pages?.map(_pageLocalToRemote).toList(),
      reactions: _reactionLocalToRemote(model.reactions),
      title: model.title,
      totalPages: model.totalPages,
      updatedAt: TimestampConverter.fromDateTime(model.updatedAt),
      sizeInBytes: model.sizeInBytes,
      reads: model.reads,
      summary: model.summary,
      isHaveQuiz: model.isHaveQuiz,
      totalQuizes: model.totalQuizes,
      isGenerateQuizSupported: model.isGenerateQuizSupported,
      quizType: model.quizType,
      rewards: model.rewards,
    );
  }

  // Remote -> Entity
  static BookEntity remoteToEntity(BookRemoteModel model) {
    return BookEntity(
      bookId: model.bookId,
      bookAsset: model.bookAsset,
      bookCover: model.bookCover,
      category: model.category,
      createdAt: TimestampConverter.toDateTime(model.createdAt),
      pages: model.pages?.map(_pageRemoteToEntity).toList(),
      reactions: _reactionRemoteToEntity(model.reactions),
      title: model.title,
      totalPages: model.totalPages,
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
      sizeInBytes: model.sizeInBytes,
      reads: model.reads,
      summary: model.summary,
      isHaveQuiz: model.isHaveQuiz,
      totalQuizes: model.totalQuizes,
      isGenerateQuizSupported: model.isGenerateQuizSupported,
      quizType: model.quizType,
      rewards: model.rewards,
    );
  }

  // Remote -> Local
  static BookLocalModel remoteToLocal(BookRemoteModel model) {
    return BookLocalModel(
      bookId: model.bookId,
      bookAsset: model.bookAsset,
      bookCover: model.bookCover,
      category: model.category,
      createdAt: TimestampConverter.toDateTime(model.createdAt),
      pages: model.pages?.map(_pageRemoteToLocal).toList(),
      reactions: _reactionRemoteToLocal(model.reactions),
      title: model.title,
      totalPages: model.totalPages,
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
      sizeInBytes: model.sizeInBytes,
      reads: model.reads,
      summary: model.summary,
      isHaveQuiz: model.isHaveQuiz,
      totalQuizes: model.totalQuizes,
      isGenerateQuizSupported: model.isGenerateQuizSupported,
      quizType: model.quizType,
      rewards: model.rewards,
    );
  }

  // List helpers
  static List<BookLocalModel> entityListToLocalList(List<BookEntity> list) =>
      list.map(entityToLocal).toList();

  static List<BookRemoteModel> entityListToRemoteList(List<BookEntity> list) =>
      list.map(entityToRemote).toList();

  static List<BookEntity> localListToEntityList(List<BookLocalModel> list) =>
      list.map(localToEntity).toList();

  static List<BookRemoteModel> localListToRemoteList(
          List<BookLocalModel> list) =>
      list.map(localToRemote).toList();

  static List<BookLocalModel> remoteListToLocalList(
          List<BookRemoteModel> list) =>
      list.map(remoteToLocal).toList();

  static List<BookEntity> remoteListToEntityList(List<BookRemoteModel> list) =>
      list.map(remoteToEntity).toList();

  // --- Private helpers ---
  static BookPageLocalModel _pageEntityToLocal(BookPageEntity entity) {
    return BookPageLocalModel(
      nPage: entity.nPage,
      skipped: entity.skipped,
      text: entity.text,
    );
  }

  static BookPageRemoteModel _pageEntityToRemote(BookPageEntity entity) {
    return BookPageRemoteModel(
      nPage: entity.nPage,
      skipped: entity.skipped,
      text: entity.text,
    );
  }

  static BookPageEntity _pageLocalToEntity(BookPageLocalModel model) {
    return BookPageEntity(
      nPage: model.nPage,
      skipped: model.skipped,
      text: model.text,
    );
  }

  static BookPageRemoteModel _pageLocalToRemote(BookPageLocalModel model) {
    return BookPageRemoteModel(
      nPage: model.nPage,
      skipped: model.skipped,
      text: model.text,
    );
  }

  static BookPageEntity _pageRemoteToEntity(BookPageRemoteModel model) {
    return BookPageEntity(
      nPage: model.nPage,
      skipped: model.skipped,
      text: model.text,
    );
  }

  static BookPageLocalModel _pageRemoteToLocal(BookPageRemoteModel model) {
    return BookPageLocalModel(
      nPage: model.nPage,
      skipped: model.skipped,
      text: model.text,
    );
  }

  static BookReactionLocalModel? _reactionEntityToLocal(
    BookReactionEntity? entity,
  ) {
    if (entity == null) return null;
    return BookReactionLocalModel(
      clappingHand: entity.clappingHand,
      heart: entity.heart,
      laughing: entity.laughing,
      lightBulb: entity.lightBulb,
    );
  }

  static BookReactionRemoteModel? _reactionEntityToRemote(
    BookReactionEntity? entity,
  ) {
    if (entity == null) return null;
    return BookReactionRemoteModel(
      clappingHand: entity.clappingHand,
      heart: entity.heart,
      laughing: entity.laughing,
      lightBulb: entity.lightBulb,
    );
  }

  static BookReactionEntity? _reactionLocalToEntity(
    BookReactionLocalModel? model,
  ) {
    if (model == null) return null;
    return BookReactionEntity(
      clappingHand: model.clappingHand,
      heart: model.heart,
      laughing: model.laughing,
      lightBulb: model.lightBulb,
    );
  }

  static BookReactionRemoteModel? _reactionLocalToRemote(
    BookReactionLocalModel? model,
  ) {
    if (model == null) return null;
    return BookReactionRemoteModel(
      clappingHand: model.clappingHand,
      heart: model.heart,
      laughing: model.laughing,
      lightBulb: model.lightBulb,
    );
  }

  static BookReactionEntity? _reactionRemoteToEntity(
    BookReactionRemoteModel? model,
  ) {
    if (model == null) return null;
    return BookReactionEntity(
      clappingHand: model.clappingHand,
      heart: model.heart,
      laughing: model.laughing,
      lightBulb: model.lightBulb,
    );
  }

  static BookReactionLocalModel? _reactionRemoteToLocal(
    BookReactionRemoteModel? model,
  ) {
    if (model == null) return null;
    return BookReactionLocalModel(
      clappingHand: model.clappingHand,
      heart: model.heart,
      laughing: model.laughing,
      lightBulb: model.lightBulb,
    );
  }
}

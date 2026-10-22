import 'package:epic_story_app/core/utils/timestamp_converter.dart';
import 'package:epic_story_app/data/models/locals/collection_book_local_model.dart';
import 'package:epic_story_app/data/models/locals/collection_detail_local_model.dart';
import 'package:epic_story_app/data/models/remotes/collection_book_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/collection_detail_remote_model.dart';
import 'package:epic_story_app/domain/entities/collection_book_entity.dart';
import 'package:epic_story_app/domain/entities/collection_detail_entity.dart';

class CollectionDetailMapper {
  // --- Single conversions ---
  static CollectionDetailEntity remoteToEntity(
      CollectionDetailRemoteModel model) {
    return CollectionDetailEntity(
      id: model.id ?? '',
      bgColor: model.bgColor,
      nPages: model.nPages,
      title: model.title,
      nBooks: model.nBooks,
      bookCovers: model.bookCovers,
      categories: model.categories,
      desc: model.desc,
      createdAt: TimestampConverter.toDateTime(model.createdAt),
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
      books: model.books?.entries
          .map((entry) => _bookRemoteToEntity(entry.value, entry.key))
          .toList(),
    );
  }

  static CollectionDetailLocalModel remoteToLocal(
      CollectionDetailRemoteModel model) {
    return CollectionDetailLocalModel(
      id: model.id,
      bgColor: model.bgColor,
      nPages: model.nPages,
      title: model.title,
      nBooks: model.nBooks,
      bookCovers: model.bookCovers,
      categories: model.categories,
      desc: model.desc,
      createdAt: TimestampConverter.toDateTime(model.createdAt),
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
      books: model.books?.entries
          .map((entry) => _bookRemoteToLocal(entry.value, entry.key))
          .toList(),
    );
  }

  static CollectionDetailEntity localToEntity(
      CollectionDetailLocalModel model) {
    return CollectionDetailEntity(
      id: model.id ?? '',
      bgColor: model.bgColor,
      nPages: model.nPages,
      title: model.title,
      nBooks: model.nBooks,
      bookCovers: model.bookCovers,
      categories: model.categories,
      desc: model.desc,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
      books: model.books?.map(_bookLocalToEntity).toList(),
    );
  }

  static CollectionDetailRemoteModel localToRemote(
      CollectionDetailLocalModel model) {
    return CollectionDetailRemoteModel(
      id: model.id,
      bgColor: model.bgColor,
      nPages: model.nPages,
      title: model.title,
      nBooks: model.nBooks,
      bookCovers: model.bookCovers,
      categories: model.categories,
      desc: model.desc,
      createdAt: TimestampConverter.fromDateTime(model.createdAt),
      updatedAt: TimestampConverter.fromDateTime(model.updatedAt),
      books: model.books?.asMap().map(
            (index, value) => MapEntry(
              value.id ?? index.toString(),
              _bookLocalToRemote(value, value.id ?? index.toString()),
            ),
          ),
    );
  }

  static CollectionDetailLocalModel entityToLocal(
      CollectionDetailEntity entity) {
    return CollectionDetailLocalModel(
      id: entity.id,
      bgColor: entity.bgColor,
      nPages: entity.nPages,
      title: entity.title,
      nBooks: entity.nBooks,
      bookCovers: entity.bookCovers,
      categories: entity.categories,
      desc: entity.desc,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
      books: entity.books?.map(_bookEntityToLocal).toList(),
    );
  }

  static CollectionDetailRemoteModel entityToRemote(
      CollectionDetailEntity entity) {
    return CollectionDetailRemoteModel(
      id: entity.id,
      bgColor: entity.bgColor,
      nPages: entity.nPages,
      title: entity.title,
      nBooks: entity.nBooks,
      bookCovers: entity.bookCovers,
      categories: entity.categories,
      desc: entity.desc,
      createdAt: TimestampConverter.fromDateTime(entity.createdAt),
      updatedAt: TimestampConverter.fromDateTime(entity.updatedAt),
      books: entity.books?.asMap().map(
            (index, value) => MapEntry(
              value.id,
              _bookEntityToRemote(value),
            ),
          ),
    );
  }

  // --- List conversions ---
  static List<CollectionDetailEntity> remoteListToEntityList(
          List<CollectionDetailRemoteModel> list) =>
      list.map(remoteToEntity).toList();

  static List<CollectionDetailLocalModel> remoteListToLocalList(
          List<CollectionDetailRemoteModel> list) =>
      list.map(remoteToLocal).toList();

  static List<CollectionDetailEntity> localListToEntityList(
          List<CollectionDetailLocalModel> list) =>
      list.map(localToEntity).toList();

  static List<CollectionDetailRemoteModel> localListToRemoteList(
          List<CollectionDetailLocalModel> list) =>
      list.map(localToRemote).toList();

  static List<CollectionDetailLocalModel> entityListToLocalList(
          List<CollectionDetailEntity> list) =>
      list.map(entityToLocal).toList();

  static List<CollectionDetailRemoteModel> entityListToRemoteList(
          List<CollectionDetailEntity> list) =>
      list.map(entityToRemote).toList();

  // --- Private helpers ---
  static CollectionBookEntity _bookRemoteToEntity(
      CollectionBookRemoteModel model, String key) {
    return CollectionBookEntity(
      id: model.id ?? key,
      title: model.title,
      coverUrl: model.coverUrl,
      category: model.category,
      nPages: model.nPages,
      summary: model.summary,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      createdAt: TimestampConverter.toDateTime(model.createdAt),
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
    );
  }

  static CollectionBookLocalModel _bookRemoteToLocal(
      CollectionBookRemoteModel model, String key) {
    return CollectionBookLocalModel(
      id: model.id ?? key,
      title: model.title,
      coverUrl: model.coverUrl,
      category: model.category,
      nPages: model.nPages,
      summary: model.summary,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      createdAt: TimestampConverter.toDateTime(model.createdAt),
      updatedAt: TimestampConverter.toDateTime(model.updatedAt),
    );
  }

  static CollectionBookEntity _bookLocalToEntity(
      CollectionBookLocalModel model) {
    return CollectionBookEntity(
      id: model.id ?? '',
      title: model.title,
      coverUrl: model.coverUrl,
      category: model.category,
      nPages: model.nPages,
      summary: model.summary,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      createdAt: model.createdAt,
      updatedAt: model.updatedAt,
    );
  }

  static CollectionBookRemoteModel _bookLocalToRemote(
      CollectionBookLocalModel model, String key) {
    return CollectionBookRemoteModel(
      id: model.id ?? key,
      title: model.title,
      coverUrl: model.coverUrl,
      category: model.category,
      nPages: model.nPages,
      summary: model.summary,
      totalQuiz: model.totalQuiz,
      completedQuiz: model.completedQuiz,
      createdAt: TimestampConverter.fromDateTime(model.createdAt),
      updatedAt: TimestampConverter.fromDateTime(model.updatedAt),
    );
  }

  static CollectionBookLocalModel _bookEntityToLocal(
      CollectionBookEntity entity) {
    return CollectionBookLocalModel(
      id: entity.id,
      title: entity.title,
      coverUrl: entity.coverUrl,
      category: entity.category,
      nPages: entity.nPages,
      summary: entity.summary,
      totalQuiz: entity.totalQuiz,
      completedQuiz: entity.completedQuiz,
      createdAt: entity.createdAt,
      updatedAt: entity.updatedAt,
    );
  }

  static CollectionBookRemoteModel _bookEntityToRemote(
      CollectionBookEntity entity) {
    return CollectionBookRemoteModel(
      id: entity.id,
      title: entity.title,
      coverUrl: entity.coverUrl,
      category: entity.category,
      nPages: entity.nPages,
      summary: entity.summary,
      totalQuiz: entity.totalQuiz,
      completedQuiz: entity.completedQuiz,
      createdAt: TimestampConverter.fromDateTime(entity.createdAt),
      updatedAt: TimestampConverter.fromDateTime(entity.updatedAt),
    );
  }
}

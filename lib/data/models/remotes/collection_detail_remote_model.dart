import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/utils/timestamp_converter.dart';
import 'package:epic_story_app/data/models/remotes/collection_book_remote_model.dart';

class CollectionDetailRemoteModel {
  final String? id;
  final int? bgColor;
  final int? nPages;
  final String? title;
  final int? nBooks;
  final List<String>? bookCovers;
  final List<String>? categories;
  final String? desc;
  final Timestamp? createdAt;
  final Timestamp? updatedAt;
  final Map<String, CollectionBookRemoteModel>? books;

  const CollectionDetailRemoteModel({
    this.id,
    this.bgColor,
    this.nPages,
    this.title,
    this.nBooks,
    this.bookCovers,
    this.categories,
    this.desc,
    this.createdAt,
    this.updatedAt,
    this.books,
  });

  factory CollectionDetailRemoteModel.fromJson(Map<String, dynamic>? json,
      {String? id}) {
    if (json == null) return const CollectionDetailRemoteModel();

    return CollectionDetailRemoteModel(
      id: id,
      bgColor: json['bgColor'] as int?,
      nPages: json['nPages'] as int?,
      title: json['title'] as String?,
      nBooks: json['nBooks'] as int?,
      bookCovers: (json['bookCovers'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      desc: json['desc'] as String?,
      createdAt: TimestampConverter.fromMap(json['createdAt']),
      updatedAt: TimestampConverter.fromMap(json['updatedAt']),
      books: (json['books'] as Map<String, dynamic>?)?.map(
        (key, value) => MapEntry(
          key,
          CollectionBookRemoteModel.fromJson(
              value as Map<String, dynamic>?, key),
        ),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bgColor': bgColor,
      'nPages': nPages,
      'title': title,
      'nBooks': nBooks,
      'bookCovers': bookCovers,
      'categories': categories,
      'desc': desc,
      'createdAt': createdAt ?? Timestamp.now(),
      'updatedAt': updatedAt ?? Timestamp.now(),
      'books': books?.map((key, value) => MapEntry(key, value.toJson())),
    };
  }
}

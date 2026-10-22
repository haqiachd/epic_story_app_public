import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/utils/timestamp_converter.dart';

class ChildrenCollectionRemoteModel {
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

  const ChildrenCollectionRemoteModel({
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
  });

  ChildrenCollectionRemoteModel copyWith({
    String? id,
    int? bgColor,
    int? nPages,
    String? title,
    int? nBooks,
    List<String>? bookCovers,
    List<String>? categories,
    String? desc,
    Timestamp? createdAt,
    Timestamp? updatedAt,
  }) {
    return ChildrenCollectionRemoteModel(
      id: id ?? this.id,
      bgColor: bgColor ?? this.bgColor,
      nPages: nPages ?? this.nPages,
      title: title ?? this.title,
      nBooks: nBooks ?? this.nBooks,
      bookCovers: bookCovers ?? this.bookCovers,
      categories: categories ?? this.categories,
      desc: desc ?? this.desc,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  factory ChildrenCollectionRemoteModel.fromJson(Map<String, dynamic>? json,
      {String? id}) {
    if (json == null) return const ChildrenCollectionRemoteModel();

    return ChildrenCollectionRemoteModel(
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
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bgColor': bgColor,
      'nPages': nPages,
      'title': title,
      'nBooks': nBooks,
      'bookCovers': bookCovers,
      'desc': desc,
      'categories': categories,
      'createdAt': createdAt ?? Timestamp.now(),
      'updatedAt': updatedAt ?? Timestamp.now(),
    };
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/utils/timestamp_converter.dart';

class CollectionBookRemoteModel {
  final String? id;
  final String? title;
  final String? coverUrl;
  final String? category;
  final int? nPages;
  final String? summary;
  final int? totalQuiz;
  final int? completedQuiz;
  final Timestamp? createdAt;
  final Timestamp? updatedAt;

  const CollectionBookRemoteModel({
    this.id,
    this.title,
    this.coverUrl,
    this.category,
    this.nPages,
    this.summary,
    this.totalQuiz,
    this.completedQuiz,
    this.createdAt,
    this.updatedAt,
  });

  factory CollectionBookRemoteModel.fromJson(
      Map<String, dynamic>? json, String? id) {
    if (json == null) return const CollectionBookRemoteModel();

    return CollectionBookRemoteModel(
      id: id,
      title: json['title'] as String?,
      coverUrl: json['coverUrl'] as String?,
      category: json['category'] as String?,
      nPages: json['nPages'] as int?,
      summary: json['summary'] as String?,
      totalQuiz: json['totalQuiz'] as int?,
      completedQuiz: json['completedQuiz'] as int?,
      createdAt: TimestampConverter.fromMap(json['createdAt']),
      updatedAt: TimestampConverter.fromMap(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'coverUrl': coverUrl,
      'category': category,
      'nPages': nPages,
      'summary': summary,
      'totalQuiz': totalQuiz,
      'completedQuiz': completedQuiz,
      'createdAt': createdAt ?? Timestamp.now(),
      'updatedAt': updatedAt ?? Timestamp.now(),
    };
  }
}

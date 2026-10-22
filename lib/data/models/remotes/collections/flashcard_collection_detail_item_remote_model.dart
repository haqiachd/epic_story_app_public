import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/utils/timestamp_converter.dart';

class FlashcardCollectionItemRemoteModel {
  final String? flashcardId;
  final String? title;
  final String? summary;
  final String? category;
  final int? totalCards;
  final int? totalQuiz;
  final int? completedQuiz;
  final Timestamp? createdAt;
  final Timestamp? updatedAt;

  const FlashcardCollectionItemRemoteModel({
    this.flashcardId,
    this.title,
    this.summary,
    this.category,
    this.totalCards,
    this.totalQuiz,
    this.completedQuiz,
    this.createdAt,
    this.updatedAt,
  });

  factory FlashcardCollectionItemRemoteModel.fromJson(
    Map<String, dynamic>? json, {
    String? id,
  }) {
    if (json == null) return const FlashcardCollectionItemRemoteModel();

    return FlashcardCollectionItemRemoteModel(
      flashcardId: id,
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      category: json['category'] as String?,
      totalCards: json['totalCards'] as int?,
      totalQuiz: json['totalQuiz'] as int?,
      completedQuiz: json['completedQuiz'] as int?,
      createdAt: TimestampConverter.fromMap(json['createdAt']),
      updatedAt: TimestampConverter.fromMap(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson({bool withoutId = false}) {
    return {
      if (!withoutId) 'flashcardId': flashcardId,
      'title': title,
      'summary': summary,
      'category': category,
      'totalCards': totalCards,
      'totalQuiz': totalQuiz,
      'completedQuiz': completedQuiz,
      'createdAt': createdAt ?? Timestamp.now(),
      'updatedAt': updatedAt ?? Timestamp.now(),
    };
  }
}

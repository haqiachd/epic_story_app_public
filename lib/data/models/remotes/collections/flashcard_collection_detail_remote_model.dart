import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/utils/timestamp_converter.dart';
import 'package:epic_story_app/data/models/remotes/collections/flashcard_collection_detail_item_remote_model.dart';

class FlashcardCollectionDetailRemoteModel {
  final String? flashcardId;
  final String? title;
  final String? desc;
  final int? bgColor;
  final List<String>? categories;
  final int? totalFlashcard;
  final int? totalCards;
  final int? totalQuiz;
  final int? completedQuiz;
  final Timestamp? createdAt;
  final Timestamp? updatedAt;
  final Map<String, FlashcardCollectionItemRemoteModel>? flashcards;

  const FlashcardCollectionDetailRemoteModel({
    this.flashcardId,
    this.title,
    this.desc,
    this.bgColor,
    this.categories,
    this.totalFlashcard,
    this.totalCards,
    this.totalQuiz,
    this.completedQuiz,
    this.createdAt,
    this.updatedAt,
    this.flashcards,
  });

  factory FlashcardCollectionDetailRemoteModel.fromJson(
    Map<String, dynamic>? json, {
    String? id,
  }) {
    if (json == null) return const FlashcardCollectionDetailRemoteModel();

    return FlashcardCollectionDetailRemoteModel(
      flashcardId: id,
      title: json['title'] as String?,
      desc: json['desc'] as String?,
      bgColor: json['bgColor'] as int?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      totalFlashcard: json['totalFlashcard'] as int?,
      totalCards: json['totalCards'] as int?,
      totalQuiz: json['totalQuiz'] as int?,
      completedQuiz: json['completedQuiz'] as int?,
      createdAt: TimestampConverter.fromMap(json['createdAt']),
      updatedAt: TimestampConverter.fromMap(json['updatedAt']),
      flashcards: (json['flashcards'] as Map<String, dynamic>?)?.map(
        (key, value) => MapEntry(
          key,
          FlashcardCollectionItemRemoteModel.fromJson(
            value as Map<String, dynamic>?,
            id: key,
          ),
        ),
      ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'desc': desc,
      'bgColor': bgColor,
      'categories': categories,
      'totalFlashcard': totalFlashcard,
      'totalCards': totalCards,
      'totalQuiz': totalQuiz,
      'completedQuiz': completedQuiz,
      'createdAt': createdAt ?? Timestamp.now(),
      'updatedAt': updatedAt ?? Timestamp.now(),
      'flashcards': flashcards
          ?.map((key, value) => MapEntry(key, value.toJson(withoutId: true))),
    };
  }
}

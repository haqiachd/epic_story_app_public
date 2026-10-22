import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/utils/timestamp_converter.dart';

class FlashcardCollectionRemoteModel {
  final String? collectionId;
  final int? bgColor;
  final List<String>? categories;
  final int? completedQuiz;
  final Timestamp? createdAt;
  final String? desc;
  final String? title;
  final int? totalCards;
  final int? totalFlashcard;
  final int? totalQuiz;
  final Timestamp? updatedAt;

  const FlashcardCollectionRemoteModel({
    this.collectionId,
    this.bgColor,
    this.categories,
    this.completedQuiz,
    this.createdAt,
    this.desc,
    this.title,
    this.totalCards,
    this.totalFlashcard,
    this.totalQuiz,
    this.updatedAt,
  });

  factory FlashcardCollectionRemoteModel.fromJson(
    Map<String, dynamic>? json, {
    String? id,
  }) {
    if (json == null) return const FlashcardCollectionRemoteModel();

    return FlashcardCollectionRemoteModel(
      collectionId: id,
      bgColor: json['bgColor'] as int?,
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      completedQuiz: json['completedQuiz'] as int?,
      createdAt: TimestampConverter.fromMap(json['createdAt']),
      desc: json['desc'] as String?,
      title: json['title'] as String?,
      totalCards: json['totalCards'] as int?,
      totalFlashcard: json['totalFlashcard'] as int?,
      totalQuiz: json['totalQuiz'] as int?,
      updatedAt: TimestampConverter.fromMap(json['updatedAt']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'collectionId': collectionId,
      'bgColor': bgColor,
      'categories': categories,
      'completedQuiz': completedQuiz,
      'createdAt': createdAt ?? Timestamp.now(),
      'desc': desc,
      'title': title,
      'totalCards': totalCards,
      'totalFlashcard': totalFlashcard,
      'totalQuiz': totalQuiz,
      'updatedAt': updatedAt ?? Timestamp.now(),
    };
  }

  FlashcardCollectionRemoteModel copyWith({
    String? collectionId,
    int? bgColor,
    List<String>? categories,
    int? completedQuiz,
    Timestamp? createdAt,
    String? desc,
    String? title,
    int? totalCards,
    int? totalFlashcard,
    int? totalQuiz,
    Timestamp? updatedAt,
  }) {
    return FlashcardCollectionRemoteModel(
      collectionId: collectionId ?? this.collectionId,
      bgColor: bgColor ?? this.bgColor,
      categories: categories ?? this.categories,
      completedQuiz: completedQuiz ?? this.completedQuiz,
      createdAt: createdAt ?? this.createdAt,
      desc: desc ?? this.desc,
      title: title ?? this.title,
      totalCards: totalCards ?? this.totalCards,
      totalFlashcard: totalFlashcard ?? this.totalFlashcard,
      totalQuiz: totalQuiz ?? this.totalQuiz,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

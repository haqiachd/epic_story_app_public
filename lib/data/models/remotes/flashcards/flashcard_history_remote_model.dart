import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/utils/timestamp_converter.dart';
import 'package:epic_story_app/data/models/remotes/flashcards/flashcard_history_card_remote_model.dart';

class FlashcardHistoryRemoteModel {
  final String? flashcardId;
  final String? title;
  final String? summary;
  final String? category;
  final int? totalCards;
  final int? totalQuiz;
  final int? completedQuiz;
  final bool? isHaveQuiz;
  final bool? isFinished;
  final Timestamp? createdAt;
  final Timestamp? updatedAt;
  final Timestamp? finishedAt;
  final Timestamp? lastReadAt;
  final List<FlashcardHistoryCardRemoteModel>? cards;
  final List<int>? claimedRewards;

  const FlashcardHistoryRemoteModel({
    this.flashcardId,
    this.title,
    this.summary,
    this.category,
    this.totalCards,
    this.totalQuiz,
    this.completedQuiz,
    this.isHaveQuiz,
    this.isFinished,
    this.createdAt,
    this.updatedAt,
    this.finishedAt,
    this.lastReadAt,
    this.cards,
    this.claimedRewards,
  });

  factory FlashcardHistoryRemoteModel.fromJson(Map<String, dynamic>? json,
      {String? flashcardId}) {
    if (json == null) return const FlashcardHistoryRemoteModel();

    return FlashcardHistoryRemoteModel(
      flashcardId: flashcardId,
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      category: json['category'] as String?,
      totalCards: json['totalCards'] as int?,
      totalQuiz: json['totalQuiz'] as int?,
      completedQuiz: json['completedQuiz'] as int?,
      isHaveQuiz: json['isHaveQuiz'] as bool?,
      isFinished: json['isFinished'] as bool?,
      createdAt: TimestampConverter.fromMap(json['createdAt']),
      updatedAt: TimestampConverter.fromMap(json['updatedAt']),
      finishedAt: TimestampConverter.fromMap(json['finishedAt']),
      lastReadAt: TimestampConverter.fromMap(json['lastReadAt']),
      cards: (json['cards'] as List<dynamic>?)
          ?.map((item) => FlashcardHistoryCardRemoteModel.fromJson(
              item as Map<String, dynamic>?))
          .toList(),
      claimedRewards: (json['claimedRewards'] as List<dynamic>?)
          ?.map((item) => item as int)
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'summary': summary,
      'category': category,
      'totalCards': totalCards,
      'totalQuiz': totalQuiz,
      'completedQuiz': completedQuiz,
      'isHaveQuiz': isHaveQuiz,
      'isFinished': isFinished,
      'createdAt': createdAt ?? Timestamp.now(),
      'updatedAt': updatedAt ?? Timestamp.now(),
      'finishedAt': finishedAt,
      'lastReadAt': lastReadAt,
      'cards': cards?.map((item) => item.toJson()).toList(),
      'claimedRewards': claimedRewards,
    };
  }

  FlashcardHistoryRemoteModel copyWith({
    String? flashcardId,
    String? title,
    String? summary,
    String? category,
    int? totalCards,
    int? totalQuiz,
    int? completedQuiz,
    bool? isHaveQuiz,
    bool? isFinished,
    Timestamp? createdAt,
    Timestamp? updatedAt,
    Timestamp? finishedAt,
    Timestamp? lastReadAt,
    List<FlashcardHistoryCardRemoteModel>? cards,
    List<int>? claimedRewards,
  }) {
    return FlashcardHistoryRemoteModel(
      flashcardId: flashcardId ?? this.flashcardId,
      title: title ?? this.title,
      summary: summary ?? this.summary,
      category: category ?? this.category,
      totalCards: totalCards ?? this.totalCards,
      totalQuiz: totalQuiz ?? this.totalQuiz,
      completedQuiz: completedQuiz ?? this.completedQuiz,
      isHaveQuiz: isHaveQuiz ?? this.isHaveQuiz,
      isFinished: isFinished ?? this.isFinished,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      finishedAt: finishedAt ?? this.finishedAt,
      lastReadAt: lastReadAt ?? this.lastReadAt,
      cards: cards ?? this.cards,
      claimedRewards: claimedRewards ?? this.claimedRewards,
    );
  }
}

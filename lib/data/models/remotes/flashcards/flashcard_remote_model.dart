import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/utils/timestamp_converter.dart';
import 'package:epic_story_app/data/models/remotes/book_reaction_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/flashcards/flashcard_card_remote_model.dart';

class FlashcardRemoteModel {
  final String? flashcardId;
  final String? title;
  final String? summary;
  final String? category;
  final List<int>? grades;
  final int? totalCards;
  final int? totalQuiz;
  final int? reads;
  final bool? isHaveQuiz;
  final bool? isGenerateQuizSupported;
  final Timestamp? createdAt;
  final Timestamp? updatedAt;
  final BookReactionRemoteModel? reactions;
  final List<FlashcardCardRemoteModel>? cards;
  final List<String>? rewards;

  const FlashcardRemoteModel({
    this.flashcardId,
    this.title,
    this.summary,
    this.category,
    this.grades,
    this.totalCards,
    this.totalQuiz,
    this.reads,
    this.isHaveQuiz,
    this.isGenerateQuizSupported,
    this.createdAt,
    this.updatedAt,
    this.reactions,
    this.cards,
    this.rewards,
  });

  factory FlashcardRemoteModel.fromJson(Map<String, dynamic>? json, {String? flashcardId}) {
    if (json == null) return const FlashcardRemoteModel();

    return FlashcardRemoteModel(
      flashcardId: flashcardId,
      title: json['title'] as String?,
      summary: json['summary'] as String?,
      category: json['category'] as String?,
      grades: (json['grades'] as List<dynamic>?)
          ?.map((item) => item as int)
          .toList(),
      totalCards: json['totalCards'] as int?,
      totalQuiz: json['totalQuiz'] as int?,
      reads: json['reads'] as int?,
      isHaveQuiz: json['isHaveQuiz'] as bool?,
      isGenerateQuizSupported: json['isGenerateQuizSupported'] as bool?,
      createdAt: TimestampConverter.fromMap(json['createdAt']),
      updatedAt: TimestampConverter.fromMap(json['updatedAt']),
      reactions: BookReactionRemoteModel.fromJson(
          json['reactions'] as Map<String, dynamic>?),
      cards: (json['cards'] as List<dynamic>?)
          ?.map((item) =>
              FlashcardCardRemoteModel.fromJson(item as Map<String, dynamic>?))
          .toList(),
      rewards: (json['rewards'] as List<dynamic>?)
          ?.map((item) => item as String)
          .toList(),    
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'summary': summary,
      'category': category,
      'grades': grades,
      'totalCards': totalCards,
      'totalQuiz': totalQuiz,
      'reads': reads,
      'isHaveQuiz': isHaveQuiz,
      'isGenerateQuizSupported': isGenerateQuizSupported,
      'createdAt': createdAt ?? Timestamp.now(),
      'updatedAt': updatedAt ?? Timestamp.now(),
      'reactions': reactions?.toJson(),
      'cards': cards?.map((item) => item.toJson()).toList(),
      'rewards': rewards,
    };
  }
}

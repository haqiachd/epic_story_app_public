import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/core/utils/timestamp_converter.dart';
import 'package:epic_story_app/data/models/remotes/book_page_remote_model.dart';
import 'package:epic_story_app/data/models/remotes/book_reaction_remote_model.dart';

class BookRemoteModel {
  final String? bookId;
  final String? bookAsset;
  final String? bookCover;
  final String? category;
  final Timestamp? createdAt;
  final List<BookPageRemoteModel>? pages;
  final BookReactionRemoteModel? reactions;
  final String? title;
  final int? totalPages;
  final Timestamp? updatedAt;
  final int? sizeInBytes;
  final int? reads;
  final String? summary;
  final bool? isHaveQuiz;
  final int? totalQuizes;
  final bool? isGenerateQuizSupported;
  final int? quizType;
  final List<String>? rewards;

  const BookRemoteModel({
    this.bookId,
    this.bookAsset,
    this.bookCover,
    this.category,
    this.createdAt,
    this.pages,
    this.reactions,
    this.title,
    this.totalPages,
    this.updatedAt,
    this.sizeInBytes,
    this.reads,
    this.summary,
    this.isHaveQuiz,
    this.totalQuizes,
    this.isGenerateQuizSupported,
    this.quizType,
    this.rewards,
  });

  factory BookRemoteModel.fromJson(
    Map<String, dynamic> json,
    String key,
  ) {
    return BookRemoteModel(
      bookId: key,
      bookAsset: json['bookAsset'] as String?,
      bookCover: json['bookCover'] as String?,
      category: json['category'] as String?,
      createdAt: TimestampConverter.fromMap(json['createdAt']),
      pages: (json['pages'] as List<dynamic>?)
          ?.map((item) =>
              BookPageRemoteModel.fromJson(item as Map<String, dynamic>?))
          .toList(),
      reactions: BookReactionRemoteModel.fromJson(
          json['reactions'] as Map<String, dynamic>?),
      title: json['title'] as String?,
      totalPages: json['totalPages'] as int?,
      updatedAt: TimestampConverter.fromMap(json['updatedAt']),
      sizeInBytes: json['sizeInBytes'] as int?,
      reads: json['reads'] as int?,
      summary: json['summary'] as String?,
      isHaveQuiz: json['isHaveQuiz'] as bool?,
      isGenerateQuizSupported: json['isGenerateQuizSupported'] as bool?,
      totalQuizes: json['totalQuizes'] as int?,
      quizType: json['quizType'] as int?,
      rewards: (json['rewards'] as List<dynamic>?)
          ?.map((item) => item as String)
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bookId': bookId,
      'bookAsset': bookAsset,
      'bookCover': bookCover,
      'category': category,
      'createdAt': createdAt ?? Timestamp.now(),
      'pages': pages?.map((item) => item.toJson()).toList(),
      'reactions': reactions?.toJson(),
      'title': title,
      'totalPages': totalPages,
      'updatedAt': updatedAt ?? Timestamp.now(),
      'sizeInBytes': sizeInBytes,
      'reads': reads,
      'summary': summary,
      'isHaveQuiz': isHaveQuiz,
      'totalQuizes': totalQuizes,
      'isGenerateQuizSupported': isGenerateQuizSupported,
      'quizType': quizType,
      'rewards': rewards,
    };
  }
}

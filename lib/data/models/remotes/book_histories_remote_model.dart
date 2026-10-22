import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:epic_story_app/data/models/remotes/book_history_quiz_remote_model.dart';

class BookHistoriesRemoteModel {
  final String? bookId;
  final String? title;
  final String? bookCover;
  final int? totalPages;
  final int? readPages;
  final bool? isFinished;
  final Timestamp? startedAt;
  final Timestamp? lastReadAt;
  final Timestamp? finishedAt;
  final int? totalReadingSeconds;
  final bool? isHaveQuiz;
  final int? totalQuizes;
  final List<int>? completedQuizes;
  final BookHistoryQuizRemoteModel? quiz;
  final String? category;
  final List<int>? claimedRewards;

  const BookHistoriesRemoteModel({
    this.bookId,
    this.title,
    this.bookCover,
    this.totalPages,
    this.readPages,
    this.isFinished,
    this.startedAt,
    this.lastReadAt,
    this.finishedAt,
    this.totalReadingSeconds,
    this.isHaveQuiz,
    this.totalQuizes,
    this.completedQuizes,
    this.quiz,
    this.category,
    this.claimedRewards,
  });

  factory BookHistoriesRemoteModel.fromJson(Map<String, dynamic> json, {
    String? bookId,
  }) {
    return BookHistoriesRemoteModel(
      bookId: bookId,
      title: json['title'] as String?,
      bookCover: json['bookCover'] as String?,
      totalPages: json['totalPages'] as int?,
      readPages: json['readPages'] as int?,
      isFinished: json['isFinished'] as bool?,
      startedAt: json['startedAt'] as Timestamp?,
      lastReadAt: json['lastReadAt'] as Timestamp?,
      finishedAt: json['finishedAt'] as Timestamp?,
      totalReadingSeconds: json['totalReadingSeconds'] as int?,
      isHaveQuiz: json['isHaveQuiz'] as bool?,
      totalQuizes: json['totalQuizes'] as int?,
      completedQuizes:
          (json['completedQuizes'] as List?)?.map((e) => e as int).toList(),
      quiz: json['quiz'] != null
          ? BookHistoryQuizRemoteModel.fromJson(json['quiz'] as Map<String, dynamic>)
          : null,    
      category: json['category'] as String?,
      claimedRewards:
          (json['claimedRewards'] as List?)?.map((e) => e as int).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'bookCover': bookCover,
      'totalPages': totalPages,
      'readPages': readPages,
      'isFinished': isFinished,
      'startedAt': startedAt,
      'lastReadAt': lastReadAt,
      'finishedAt': finishedAt,
      'totalReadingSeconds': totalReadingSeconds,
      'isHaveQuiz': isHaveQuiz,
      'totalQuizes': totalQuizes,
      'completedQuizes': completedQuizes,
      'quiz': quiz?.toJson(),
      'category': category,
      'claimedRewards': claimedRewards,
    };
  }

  BookHistoriesRemoteModel copyWith({
    String? title,
    String? bookCover,
    int? totalPages,
    int? readPages,
    bool? isFinished,
    Timestamp? startedAt,
    Timestamp? lastReadAt,
    Timestamp? finishedAt,
    int? totalReadingSeconds,
    bool? isHaveQuiz,
    int? totalQuizes,
    List<int>? completedQuizes,
    BookHistoryQuizRemoteModel? quiz,
    String? category,
    List<int>? claimedRewards,
  }) {
    return BookHistoriesRemoteModel(
      title: title ?? this.title,
      bookCover: bookCover ?? this.bookCover,
      totalPages: totalPages ?? this.totalPages,
      readPages: readPages ?? this.readPages,
      isFinished: isFinished ?? this.isFinished,
      startedAt: startedAt ?? this.startedAt,
      lastReadAt: lastReadAt ?? this.lastReadAt,
      finishedAt: finishedAt ?? this.finishedAt,
      totalReadingSeconds: totalReadingSeconds ?? this.totalReadingSeconds,
      isHaveQuiz: isHaveQuiz ?? this.isHaveQuiz,
      totalQuizes: totalQuizes ?? this.totalQuizes,
      completedQuizes: completedQuizes ?? this.completedQuizes,
      quiz: quiz ?? this.quiz,
      category: category ?? this.category,
      claimedRewards: claimedRewards ?? this.claimedRewards,
    );
  }
}

import 'package:epic_story_app/domain/entities/book_history_quiz_entity.dart';

class BookHistoryEntity {
  final String? bookId;
  final String? title;
  final String? bookCover;
  final int? totalPages;
  final int? readPages;
  final bool? isFinished;
  final DateTime? startedAt;
  final DateTime? lastReadAt;
  final DateTime? finishedAt;
  final int? totalReadingSeconds;
  final bool? isHaveQuiz;
  final int? totalQuizes;
  final List<int>? completedQuizes;
  final String? category;
  final BookHistoryQuizEntity? quiz;
  final List<int>? claimedRewards;

  const BookHistoryEntity({
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

  BookHistoryEntity copyWith({
    String? bookId,
    String? title,
    String? bookCover,
    int? totalPages,
    int? readPages,
    bool? isFinished,
    DateTime? startedAt,
    DateTime? lastReadAt,
    DateTime? finishedAt,
    int? totalReadingSeconds,
    bool? isHaveQuiz,
    int? totalQuizes,
    List<int>? completedQuizes,
    BookHistoryQuizEntity? quiz,
    String? category,
    List<int>? claimedRewards,
  }) {
    return BookHistoryEntity(
      bookId: bookId ?? this.bookId,
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
    
import 'package:epic_story_app/domain/entities/book_page_entity.dart';
import 'package:epic_story_app/domain/entities/book_reaction_enttiy.dart';

class BookEntity {
  final String? bookId;
  final String? bookAsset;
  final String? bookCover;
  final String? category;
  final DateTime? createdAt;
  final List<BookPageEntity>? pages;
  final BookReactionEntity? reactions;
  final String? title;
  final int? totalPages;
  final DateTime? updatedAt;
  final int? sizeInBytes;
  final int? reads;
  final String? summary;
  final bool? isHaveQuiz;
  final int? totalQuizes;
  final bool? isGenerateQuizSupported;
  final int? quizType;
  final List<String>? rewards;

  const BookEntity({
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

  BookEntity copyWith({
    String? bookId,
    String? bookAsset,
    String? bookCover,
    String? category,
    DateTime? createdAt,
    List<BookPageEntity>? pages,
    BookReactionEntity? reactions,
    String? title,
    int? totalPages,
    DateTime? updatedAt,
    int? sizeInBytes,
    int? reads,
    String? summary,
    bool? isHaveQuiz,
    int? totalQuizes,
    bool? isGenerateQuizSupported,
    int? quizType,
    List<String>? rewards,
  }) {
    return BookEntity(
      bookId: bookId ?? this.bookId,
      bookAsset: bookAsset ?? this.bookAsset,
      bookCover: bookCover ?? this.bookCover,
      category: category ?? this.category,
      createdAt: createdAt ?? this.createdAt,
      pages: pages ?? this.pages,
      reactions: reactions ?? this.reactions,
      title: title ?? this.title,
      totalPages: totalPages ?? this.totalPages,
      updatedAt: updatedAt ?? this.updatedAt,
      sizeInBytes: sizeInBytes ?? this.sizeInBytes,
      reads: reads ?? this.reads,
      summary: summary ?? this.summary,
      isHaveQuiz: isHaveQuiz ?? this.isHaveQuiz,
      totalQuizes: totalQuizes ?? this.totalQuizes,
      isGenerateQuizSupported: isGenerateQuizSupported ?? this.isGenerateQuizSupported,
      quizType: quizType ?? this.quizType,
      rewards: rewards ?? this.rewards,
    );
  }
}

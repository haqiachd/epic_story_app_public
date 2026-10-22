import 'package:isar_community/isar.dart';

import 'book_page_local_model.dart';
import 'book_reaction_local_model.dart';

part 'book_local_model.g.dart';

@Collection()
class BookLocalModel {
  Id id = Isar.autoIncrement;
  final String? bookId;
  final String? bookAsset;
  final String? bookCover;
  final String? category;
  final DateTime? createdAt;
  final List<BookPageLocalModel>? pages;
  final BookReactionLocalModel? reactions;
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

  BookLocalModel({
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
}

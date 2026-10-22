import 'package:epic_story_app/data/models/locals/book_history_quiz_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/history/quiz_choice_history_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/history/quiz_fill_blank_answer_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/history/quiz_group_answer_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/quiz_choice_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/quiz_fill_blank_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/quiz_group_local_model.dart';
import 'package:isar_community/isar.dart';

part 'book_histories_local_model.g.dart';

@Collection()
class BookHistoryLocalModel {
  Id id = Isar.autoIncrement;
  @Index()
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
  final BookHistoryQuizLocalModel? quiz;
  final String? category;
  final List<int>? claimedRewards;

  BookHistoryLocalModel({
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
}

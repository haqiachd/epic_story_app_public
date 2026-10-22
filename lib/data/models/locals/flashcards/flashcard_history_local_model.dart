import 'package:epic_story_app/data/models/locals/flashcards/flashcard_history_answer_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/history/quiz_choice_history_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/history/quiz_fill_blank_answer_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/history/quiz_group_answer_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/quiz_choice_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/quiz_fill_blank_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/quiz_group_local_model.dart';
import 'package:isar_community/isar.dart';

import 'flashcard_history_card_local_model.dart';

part 'flashcard_history_local_model.g.dart';

@Collection()
class FlashcardHistoryLocalModel {
  Id id = Isar.autoIncrement;
  final String? flashcardId;
  final String? title;
  final String? summary;
  final String? category;
  final int? totalCards;
  final int? totalQuiz;
  final int? completedQuiz;
  final bool? isHaveQuiz;
  final bool? isFinished;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? finishedAt;
  final DateTime? lastReadAt;
  final List<FlashcardHistoryCardLocalModel>? cards;
  final List<int>? claimedRewards;

  FlashcardHistoryLocalModel({
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
}

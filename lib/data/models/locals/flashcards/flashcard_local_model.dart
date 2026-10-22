import 'package:epic_story_app/data/models/locals/book_reaction_local_model.dart';
import 'package:epic_story_app/data/models/locals/flashcards/flashcard_quiz_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/quiz_choice_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/quiz_fill_blank_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/quiz_group_local_model.dart';
import 'package:isar_community/isar.dart';

import 'flashcard_card_local_model.dart';

part 'flashcard_local_model.g.dart';

@Collection()
class FlashcardLocalModel {
  Id id = Isar.autoIncrement;
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
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final BookReactionLocalModel? reactions;
  final List<FlashcardCardLocalModel>? cards;
  final List<String>? rewards;

  FlashcardLocalModel({
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
}

import 'package:epic_story_app/data/models/locals/flashcards/flashcard_history_answer_local_model.dart';
import 'package:isar_community/isar.dart';

part 'flashcard_history_card_local_model.g.dart';

@embedded
class FlashcardHistoryCardLocalModel {
  final int? nPage;
  final bool? isRead;
  final bool? isQuiz;
  final bool? completedQuiz;
  final bool? correctAnswer;
  final bool? isQuizAlreadyGenerated;
  final String? screenshot;
  final FlashcardHistoryAnswerLocalModel? historyAnswer;

  const FlashcardHistoryCardLocalModel({
    this.nPage,
    this.isRead,
    this.isQuiz,
    this.completedQuiz,
    this.correctAnswer,
    this.isQuizAlreadyGenerated,
    this.screenshot,
    this.historyAnswer,
  });
}

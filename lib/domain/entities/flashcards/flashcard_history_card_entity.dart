import 'package:epic_story_app/domain/entities/flashcards/flashcard_history_answer_entity.dart';

class FlashcardHistoryCardEntity {
  final int? nPage;
  final bool? isRead;
  final bool? isQuiz;
  final bool? completedQuiz;
  final bool? correctAnswer;
  final bool? isQuizAlreadyGenerated;
  final String? screenshot;
  final FlashcardHistoryAnswerEntity? historyAnswer;

  const FlashcardHistoryCardEntity({
    this.nPage,
    this.isRead,
    this.isQuiz,
    this.completedQuiz,
    this.isQuizAlreadyGenerated,
    this.correctAnswer,
    this.screenshot,
    this.historyAnswer,
  });

  FlashcardHistoryCardEntity copyWith({
    int? nPage,
    bool? isRead,
    bool? isQuiz,
    bool? completedQuiz,
    bool? correctAnswer,
    bool? isQuizAlreadyGenerated,
    String? screenshot,
    FlashcardHistoryAnswerEntity? historyAnswer,
  }) {
    return FlashcardHistoryCardEntity(
      nPage: nPage ?? this.nPage,
      isRead: isRead ?? this.isRead,
      isQuiz: isQuiz ?? this.isQuiz,
      completedQuiz: completedQuiz ?? this.completedQuiz,
      correctAnswer: correctAnswer ?? this.correctAnswer,
      isQuizAlreadyGenerated: isQuizAlreadyGenerated ?? this.isQuizAlreadyGenerated,
      screenshot: screenshot ?? this.screenshot,
      historyAnswer: historyAnswer ?? this.historyAnswer,
    );
  }
}

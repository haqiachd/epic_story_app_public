import 'package:epic_story_app/data/models/remotes/flashcards/flashcard_history_answer_remote_model.dart';

class FlashcardHistoryCardRemoteModel {
  final int? nPage;
  final bool? isRead;
  final bool? isQuiz;
  final bool? completedQuiz;
  final bool? correctAnswer;
  final bool? isQuizAlreadyGenerated;
  final String? screenshot;
  final FlashcardHistoryAnswerRemoteModel? historyAnswer;

  const FlashcardHistoryCardRemoteModel({
    this.nPage,
    this.isRead,
    this.isQuiz,
    this.completedQuiz,
    this.correctAnswer,
    this.isQuizAlreadyGenerated,
    this.screenshot,
    this.historyAnswer,
  });

  factory FlashcardHistoryCardRemoteModel.fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) return const FlashcardHistoryCardRemoteModel();

    return FlashcardHistoryCardRemoteModel(
      nPage: json['nPage'] as int?,
      isRead: json['isRead'] as bool?,
      isQuiz: json['isQuiz'] as bool?,
      completedQuiz: json['completedQuiz'] as bool?,
      correctAnswer: json['correctAnswer'] as bool?,
      isQuizAlreadyGenerated: json['isQuizAlreadyGenerated'] as bool?,
      screenshot: json['screenshot'] as String?,
      historyAnswer: json['historyAnswer'] != null
          ? FlashcardHistoryAnswerRemoteModel.fromJson(
              json['historyAnswer'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nPage': nPage,
      'isRead': isRead,
      'isQuiz': isQuiz,
      'completedQuiz': completedQuiz,
      'correctAnswer': correctAnswer,
      'screenshot': screenshot,
      'historyAnswer': historyAnswer?.toJson(),
      'isQuizAlreadyGenerated': isQuizAlreadyGenerated,
    };
  }
}

import 'package:epic_story_app/data/models/remotes/flashcards/flashcard_quiz_remote_model.dart';

class FlashcardCardRemoteModel {
  final int? nPage;
  final String? image;
  final String? text;
  final bool? isQuizGenerated;
  final int? quizType;
  final FlashcardQuizRemoteModel? quiz;

  const FlashcardCardRemoteModel({
    this.nPage,
    this.image,
    this.text,
    this.isQuizGenerated,
    this.quizType,
    this.quiz,
  });

  factory FlashcardCardRemoteModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const FlashcardCardRemoteModel();

    return FlashcardCardRemoteModel(
      nPage: json['nPage'] as int?,
      image: json['image'] as String?,
      text: json['text'] as String?,
      isQuizGenerated: json['isQuizGenerated'] as bool?,
      quizType: json['quizType'] as int?,
      quiz: FlashcardQuizRemoteModel.fromJson(
          json['quiz'] as Map<String, dynamic>?),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'nPage': nPage,
      'image': image,
      'text': text,
      'isQuizGenerated': isQuizGenerated,
      'quizType': quizType,
      'quiz': quiz?.toJson(),
    };
  }
}

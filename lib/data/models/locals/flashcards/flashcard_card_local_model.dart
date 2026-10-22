import 'package:isar_community/isar.dart';

import 'flashcard_quiz_local_model.dart';

part 'flashcard_card_local_model.g.dart';

@embedded
class FlashcardCardLocalModel {
  final int? nPage;
  final String? image;
  final String? text;
  final bool? isQuizGenerated;
  final int? quizType;
  final FlashcardQuizLocalModel? quiz;

  const FlashcardCardLocalModel({
    this.nPage,
    this.image,
    this.text,
    this.isQuizGenerated,
    this.quizType,
    this.quiz,
  });
}

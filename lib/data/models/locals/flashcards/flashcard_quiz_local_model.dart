import 'package:epic_story_app/data/models/locals/quiz/quiz_choice_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/quiz_fill_blank_local_model.dart';
import 'package:epic_story_app/data/models/locals/quiz/quiz_group_local_model.dart';
import 'package:isar_community/isar.dart';

part 'flashcard_quiz_local_model.g.dart';

@embedded
class FlashcardQuizLocalModel {
  final int? quizType;
  final String? quizData;
  final String? explanation;
  final QuizChoiceLocalModel? multipleChoice;
  final QuizFillBlankLocalModel? fillBlank;
  final QuizGroupLocalModel? group;

  const FlashcardQuizLocalModel({
    this.quizType,
    this.quizData,
    this.explanation,
    this.multipleChoice,
    this.fillBlank,
    this.group,
  });
}

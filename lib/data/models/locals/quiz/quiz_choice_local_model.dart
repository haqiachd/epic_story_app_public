import 'package:isar_community/isar.dart';

part 'quiz_choice_local_model.g.dart';

@embedded
class QuizChoiceLocalModel {
  final String? question;
  final String? image;
  final int? quizType;
  final List<String>? choices;
  final int? correctedIndex;
  final String? explanation;

  const QuizChoiceLocalModel({
    this.image,
    this.question,
    this.quizType,
    this.choices,
    this.correctedIndex,
    this.explanation,
  });
}

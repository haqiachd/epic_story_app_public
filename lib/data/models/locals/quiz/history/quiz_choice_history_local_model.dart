import 'package:isar_community/isar.dart';

import '../quiz_choice_local_model.dart';

part 'quiz_choice_history_local_model.g.dart';

@embedded
class QuizChoiceAnswerLocalModel {
  final int? selectedAnswer;

  const QuizChoiceAnswerLocalModel({
    this.selectedAnswer,
  });
}

import 'package:isar_community/isar.dart';

part 'quiz_fill_blank_local_model.g.dart';

@embedded
class QuizFillBlankLocalModel {
  final List<QuizFillBlankSentenceLocalModel>? sentence;
  final List<QuizFillBlankOptionLocalModel>? options;
  final String? explanation;

  const QuizFillBlankLocalModel({
    this.sentence,
    this.options,
    this.explanation,
  });
}

@embedded
class QuizFillBlankSentenceLocalModel {
  final String? type;
  final String? value;
  final String? id;

  const QuizFillBlankSentenceLocalModel({
    this.type,
    this.value,
    this.id,
  });
}

@embedded
class QuizFillBlankOptionLocalModel {
  final String? id;
  final String? value;
  final String? correctBlankId;

  const QuizFillBlankOptionLocalModel({
    this.id,
    this.value,
    this.correctBlankId,
  });
}

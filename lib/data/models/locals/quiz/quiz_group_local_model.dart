import 'package:isar_community/isar.dart';

part 'quiz_group_local_model.g.dart';

@embedded
class QuizGroupLocalModel {
  final List<QuizGroupItemLocalModel>? groups;
  final List<QuizGroupOptionLocalModel>? options;
  final String? explanation;

  const QuizGroupLocalModel({
    this.groups,
    this.options,
    this.explanation,
  });
}

@embedded
class QuizGroupItemLocalModel {
  final String? id;
  final String? title;

  const QuizGroupItemLocalModel({
    this.id,
    this.title,
  });
}

@embedded
class QuizGroupOptionLocalModel {
  final String? id;
  final String? value;
  final String? correctGroupId;

  const QuizGroupOptionLocalModel({
    this.id,
    this.value,
    this.correctGroupId,
  });
}

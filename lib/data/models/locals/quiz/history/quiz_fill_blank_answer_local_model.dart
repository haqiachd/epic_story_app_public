import 'package:isar_community/isar.dart';

part 'quiz_fill_blank_answer_local_model.g.dart';

@embedded
class QuizFillBlankAnswerLocalModel {
  // Store map as list of "key|value" entries for Isar.
  final List<String>? assignedBlankEntries;

  const QuizFillBlankAnswerLocalModel({
    this.assignedBlankEntries,
  });

  Map<String, String>? toMap() {
    if (assignedBlankEntries == null) return null;
    final result = <String, String>{};
    for (final entry in assignedBlankEntries!) {
      final separatorIndex = entry.indexOf('|');
      if (separatorIndex == -1) continue;
      final key = entry.substring(0, separatorIndex);
      final value = entry.substring(separatorIndex + 1);
      result[key] = value;
    }
    return result;
  }

  factory QuizFillBlankAnswerLocalModel.fromMap(Map<String, String>? map) {
    if (map == null) return const QuizFillBlankAnswerLocalModel();
    final entries = map.entries.map((e) => '${e.key}|${e.value}').toList();
    return QuizFillBlankAnswerLocalModel(assignedBlankEntries: entries);
  }
}

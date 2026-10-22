import 'package:isar_community/isar.dart';

part 'quiz_group_answer_local_model.g.dart';

@embedded
class QuizGroupAnswerLocalModel {
  // Flatten map entries into a list of "key|value" to persist in Isar.
  final List<String>? assignedGroupEntries;

  const QuizGroupAnswerLocalModel({
    this.assignedGroupEntries,
  });

  Map<String, String>? toMap() {
    if (assignedGroupEntries == null) return null;
    final result = <String, String>{};
    for (final entry in assignedGroupEntries!) {
      final separatorIndex = entry.indexOf('|');
      if (separatorIndex == -1) continue;
      final key = entry.substring(0, separatorIndex);
      final value = entry.substring(separatorIndex + 1);
      result[key] = value;
    }
    return result;
  }

  factory QuizGroupAnswerLocalModel.fromMap(Map<String, String>? map) {
    if (map == null) return const QuizGroupAnswerLocalModel();
    final entries = map.entries.map((e) => '${e.key}|${e.value}').toList();
    return QuizGroupAnswerLocalModel(assignedGroupEntries: entries);
  }
}

class QuizGroupAnswerRemoteModel {
  final Map<String, String>? assignedGroupByOption;

  const QuizGroupAnswerRemoteModel({
    this.assignedGroupByOption,
  });

  factory QuizGroupAnswerRemoteModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const QuizGroupAnswerRemoteModel();

    final raw = json['assignedGroupByOption'];
    Map<String, String>? normalized;
    if (raw is Map) {
      normalized = raw.map((key, value) => MapEntry(
            key.toString(),
            value?.toString() ?? '',
          ));
    }

    return QuizGroupAnswerRemoteModel(
      assignedGroupByOption: normalized,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'assignedGroupByOption': assignedGroupByOption,
    };
  }
}

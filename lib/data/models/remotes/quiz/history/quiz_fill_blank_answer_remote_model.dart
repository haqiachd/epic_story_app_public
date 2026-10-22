class QuizFillBlankAnswerRemoteModel {
  final Map<String, String>? assignedBlankByOption;

  const QuizFillBlankAnswerRemoteModel({
    this.assignedBlankByOption,
  });

  factory QuizFillBlankAnswerRemoteModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const QuizFillBlankAnswerRemoteModel();

    final raw = json['assignedBlankByOption'];
    Map<String, String>? normalized;
    if (raw is Map) {
      normalized = raw.map((key, value) => MapEntry(
            key.toString(),
            value?.toString() ?? '',
          ));
    }

    return QuizFillBlankAnswerRemoteModel(
      assignedBlankByOption: normalized,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'assignedBlankByOption': assignedBlankByOption,
    };
  }
}

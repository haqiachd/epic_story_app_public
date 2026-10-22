class QuizGroupAnswerEntity {
  final Map<String, String>? assignedGroupByOption;

  const QuizGroupAnswerEntity({
    this.assignedGroupByOption,
  });

  QuizGroupAnswerEntity copyWith({
    Map<String, String>? assignedGroupByOption,
  }) {
    return QuizGroupAnswerEntity(
      assignedGroupByOption:
          assignedGroupByOption ?? this.assignedGroupByOption,
    );
  }
}

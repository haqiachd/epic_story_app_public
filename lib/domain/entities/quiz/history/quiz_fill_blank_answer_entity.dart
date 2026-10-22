class QuizFillBlankAnswerEntity {
  final Map<String, String>? assignedBlankByOption;

  const QuizFillBlankAnswerEntity({
    this.assignedBlankByOption,
  });

  QuizFillBlankAnswerEntity copyWith({
    Map<String, String>? assignedBlankByOption,
  }) {
    return QuizFillBlankAnswerEntity(
      assignedBlankByOption:
          assignedBlankByOption ?? this.assignedBlankByOption,
    );
  }
}

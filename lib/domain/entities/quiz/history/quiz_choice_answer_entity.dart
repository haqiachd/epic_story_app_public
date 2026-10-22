class QuizChoiceAnswerEntity {
  final int? selectedAnswer;

  const QuizChoiceAnswerEntity({
    this.selectedAnswer,
  });

  QuizChoiceAnswerEntity copyWith({
    int? selectedAnswer,
  }) {
    return QuizChoiceAnswerEntity(
      selectedAnswer: selectedAnswer ?? this.selectedAnswer,
    );
  }
}

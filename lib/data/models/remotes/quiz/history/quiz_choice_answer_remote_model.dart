class QuizChoiceAnswerRemoteModel {
  final int? selectedAnswer;

  const QuizChoiceAnswerRemoteModel({
    this.selectedAnswer,
  });

  factory QuizChoiceAnswerRemoteModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const QuizChoiceAnswerRemoteModel();

    return QuizChoiceAnswerRemoteModel(
      selectedAnswer: json['selectedAnswer'] as int?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'selectedAnswer': selectedAnswer,
    };
  }
}

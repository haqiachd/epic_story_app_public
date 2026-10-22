class QuizChoiceEntity {
  final String? question;
  final String? image;
  final int? quizType;
  final List<String>? choices;
  final int? correctedIndex;
  final String? quizDataHelper;
  final String? explanation;

  const QuizChoiceEntity({
    this.question,
    this.image,
    this.quizType,
    this.choices,
    this.correctedIndex,
    this.quizDataHelper,
    this.explanation,
  });

  QuizChoiceEntity copyWith({
    String? question,
    int? quizType,
    String? image,
    List<String>? choices,
    int? correctedIndex,
    String? quizDataHelper,
    String? explanation,
  }) {
    return QuizChoiceEntity(
      image: image ?? this.image,
      question: question ?? this.question,
      quizType: quizType ?? this.quizType,
      choices: choices ?? this.choices,
      correctedIndex: correctedIndex ?? this.correctedIndex,
      quizDataHelper: quizDataHelper ?? this.quizDataHelper,
      explanation: explanation ?? this.explanation,
    );
  }
}

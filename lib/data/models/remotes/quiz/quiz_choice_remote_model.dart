class QuizChoiceRemoteModel {
  final String? question;
  final String? image;
  final int? quizType;
  final List<String>? choices;
  final int? correctedIndex;
  final String? explanation;

  const QuizChoiceRemoteModel({
    this.question,
    this.image,
    this.quizType,
    this.choices,
    this.correctedIndex,
    this.explanation,
  });

  factory QuizChoiceRemoteModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const QuizChoiceRemoteModel();

    return QuizChoiceRemoteModel(
      question: json['question'] as String?,
      image: json['image'] as String?,
      quizType: json['quizType'] as int?,
      choices: (json['choices'] as List<dynamic>?)
          ?.map((item) => item as String)
          .toList(),
      correctedIndex: json['correctedIndex'] as int?,
      explanation: json['explanation'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'question': question,
      'image': image,
      'quizType': quizType,
      'choices': choices,
      'correctedIndex': correctedIndex,
      'explanation': explanation,
    };
  }
}

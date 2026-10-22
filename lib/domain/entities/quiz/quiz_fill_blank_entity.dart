class QuizFillBlankEntity {
  final List<QuizFillBlankSentenceEntity>? sentence;
  final List<QuizFillBlankOptionEntity>? options;
  final String? quizDataHelper;
  final String? explanation;

  const QuizFillBlankEntity({
    this.sentence,
    this.options,
    this.quizDataHelper,
    this.explanation,
  });

  QuizFillBlankEntity copyWith({
    List<QuizFillBlankSentenceEntity>? sentence,
    List<QuizFillBlankOptionEntity>? options,
    String? quizDataHelper,
    String? explanation,
  }) {
    return QuizFillBlankEntity(
      sentence: sentence ?? this.sentence,
      options: options ?? this.options,
      quizDataHelper: quizDataHelper ?? this.quizDataHelper,
      explanation: explanation ?? this.explanation,
    );
  }
}

class QuizFillBlankSentenceEntity {
  final String? type;
  final String? value;
  final String? id;

  const QuizFillBlankSentenceEntity({
    this.type,
    this.value,
    this.id,
  });

  QuizFillBlankSentenceEntity copyWith({
    String? type,
    String? value,
    String? id,
  }) {
    return QuizFillBlankSentenceEntity(
      type: type ?? this.type,
      value: value ?? this.value,
      id: id ?? this.id,
    );
  }
}

class QuizFillBlankOptionEntity {
  final String? id;
  final String? value;
  final String? correctBlankId;

  const QuizFillBlankOptionEntity({
    this.id,
    this.value,
    this.correctBlankId,
  });

  QuizFillBlankOptionEntity copyWith({
    String? id,
    String? value,
    String? correctBlankId,
  }) {
    return QuizFillBlankOptionEntity(
      id: id ?? this.id,
      value: value ?? this.value,
      correctBlankId: correctBlankId ?? this.correctBlankId,
    );
  }
}

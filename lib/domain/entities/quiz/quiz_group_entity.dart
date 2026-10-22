class QuizGroupEntity {
  final List<QuizGroupItemEntity>? groups;
  final List<QuizGroupOptionEntity>? options;
  final String? quizDataHelper;
  final String? explanation;

  const QuizGroupEntity({
    this.groups,
    this.options,
    this.quizDataHelper,
    this.explanation,
  });

  QuizGroupEntity copyWith({
    List<QuizGroupItemEntity>? groups,
    List<QuizGroupOptionEntity>? options,
    String? quizDataHelper,
    String? explanation,
  }) {
    return QuizGroupEntity(
      groups: groups ?? this.groups,
      options: options ?? this.options,
      quizDataHelper: quizDataHelper ?? this.quizDataHelper,
      explanation: explanation ?? this.explanation,
    );
  }
}

class QuizGroupItemEntity {
  final String? id;
  final String? title;

  const QuizGroupItemEntity({
    this.id,
    this.title,
  });

  QuizGroupItemEntity copyWith({
    String? id,
    String? title,
  }) {
    return QuizGroupItemEntity(
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }
}

class QuizGroupOptionEntity {
  final String? id;
  final String? value;
  final String? correctGroupId;

  const QuizGroupOptionEntity({
    this.id,
    this.value,
    this.correctGroupId,
  });

  QuizGroupOptionEntity copyWith({
    String? id,
    String? value,
    String? correctGroupId,
  }) {
    return QuizGroupOptionEntity(
      id: id ?? this.id,
      value: value ?? this.value,
      correctGroupId: correctGroupId ?? this.correctGroupId,
    );
  }
}

class QuizFillBlankRemoteModel {
  final List<QuizFillBlankSentenceRemoteModel>? sentence;
  final List<QuizFillBlankOptionRemoteModel>? options;
  final String? explanation;

  const QuizFillBlankRemoteModel({
    this.sentence,
    this.options,
    this.explanation,
  });

  factory QuizFillBlankRemoteModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const QuizFillBlankRemoteModel();

    return QuizFillBlankRemoteModel(
      sentence: (json['sentence'] as List<dynamic>?)
          ?.map((item) => QuizFillBlankSentenceRemoteModel.fromJson(
              item as Map<String, dynamic>?))
          .toList(),
      options: (json['options'] as List<dynamic>?)
          ?.map((item) => QuizFillBlankOptionRemoteModel.fromJson(
              item as Map<String, dynamic>?))
          .toList(),
      explanation: json['explanation'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'sentence': sentence?.map((item) => item.toJson()).toList(),
      'options': options?.map((item) => item.toJson()).toList(),
      'explanation': explanation,
    };
  }
}

class QuizFillBlankSentenceRemoteModel {
  final String? type;
  final String? value;
  final String? id;

  const QuizFillBlankSentenceRemoteModel({
    this.type,
    this.value,
    this.id,
  });

  factory QuizFillBlankSentenceRemoteModel.fromJson(
    Map<String, dynamic>? json,
  ) {
    if (json == null) return const QuizFillBlankSentenceRemoteModel();

    return QuizFillBlankSentenceRemoteModel(
      type: json['type'] as String?,
      value: json['value'] as String?,
      id: json['id'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'value': value,
      'id': id,
    };
  }
}

class QuizFillBlankOptionRemoteModel {
  final String? id;
  final String? value;
  final String? correctBlankId;

  const QuizFillBlankOptionRemoteModel({
    this.id,
    this.value,
    this.correctBlankId,
  });

  factory QuizFillBlankOptionRemoteModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const QuizFillBlankOptionRemoteModel();

    return QuizFillBlankOptionRemoteModel(
      id: json['id'] as String?,
      value: json['value'] as String?,
      correctBlankId: json['correctBlankId'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'value': value,
      'correctBlankId': correctBlankId,
    };
  }
}

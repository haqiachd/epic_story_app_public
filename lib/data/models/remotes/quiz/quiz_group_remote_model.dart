class QuizGroupRemoteModel {
  final List<QuizGroupItemRemoteModel>? groups;
  final List<QuizGroupOptionRemoteModel>? options;
  final String? explanation;

  const QuizGroupRemoteModel({
    this.groups,
    this.options,
    this.explanation,
  });

  factory QuizGroupRemoteModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const QuizGroupRemoteModel();

    return QuizGroupRemoteModel(
      groups: (json['groups'] as List<dynamic>?)
          ?.map((item) =>
              QuizGroupItemRemoteModel.fromJson(item as Map<String, dynamic>?))
          .toList(),
      options: (json['options'] as List<dynamic>?)
          ?.map((item) => QuizGroupOptionRemoteModel.fromJson(
              item as Map<String, dynamic>?))
          .toList(),
      explanation: json['explanation'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'groups': groups?.map((item) => item.toJson()).toList(),
      'options': options?.map((item) => item.toJson()).toList(),
      'explanation': explanation,
    };
  }
}

class QuizGroupItemRemoteModel {
  final String? id;
  final String? title;

  const QuizGroupItemRemoteModel({
    this.id,
    this.title,
  });

  factory QuizGroupItemRemoteModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const QuizGroupItemRemoteModel();

    return QuizGroupItemRemoteModel(
      id: json['id'] as String?,
      title: json['title'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
    };
  }
}

class QuizGroupOptionRemoteModel {
  final String? id;
  final String? value;
  final String? correctGroupId;

  const QuizGroupOptionRemoteModel({
    this.id,
    this.value,
    this.correctGroupId,
  });

  factory QuizGroupOptionRemoteModel.fromJson(Map<String, dynamic>? json) {
    if (json == null) return const QuizGroupOptionRemoteModel();

    return QuizGroupOptionRemoteModel(
      id: json['id'] as String?,
      value: json['value'] as String?,
      correctGroupId: json['correctGroupId'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'value': value,
      'correctGroupId': correctGroupId,
    };
  }
}

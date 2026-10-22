// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_history_answer_local_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const FlashcardHistoryAnswerLocalModelSchema = Schema(
  name: r'FlashcardHistoryAnswerLocalModel',
  id: -4491365163674964381,
  properties: {
    r'answer': PropertySchema(
      id: 0,
      name: r'answer',
      type: IsarType.string,
    ),
    r'fillBlankAnswer': PropertySchema(
      id: 1,
      name: r'fillBlankAnswer',
      type: IsarType.object,
      target: r'QuizFillBlankAnswerLocalModel',
    ),
    r'fillBlankQuestion': PropertySchema(
      id: 2,
      name: r'fillBlankQuestion',
      type: IsarType.object,
      target: r'QuizFillBlankLocalModel',
    ),
    r'groupAnswer': PropertySchema(
      id: 3,
      name: r'groupAnswer',
      type: IsarType.object,
      target: r'QuizGroupAnswerLocalModel',
    ),
    r'groupQuestion': PropertySchema(
      id: 4,
      name: r'groupQuestion',
      type: IsarType.object,
      target: r'QuizGroupLocalModel',
    ),
    r'multipleChoiceAnswer': PropertySchema(
      id: 5,
      name: r'multipleChoiceAnswer',
      type: IsarType.object,
      target: r'QuizChoiceAnswerLocalModel',
    ),
    r'multipleChoiceQuestion': PropertySchema(
      id: 6,
      name: r'multipleChoiceQuestion',
      type: IsarType.object,
      target: r'QuizChoiceLocalModel',
    ),
    r'question': PropertySchema(
      id: 7,
      name: r'question',
      type: IsarType.string,
    ),
    r'quizType': PropertySchema(
      id: 8,
      name: r'quizType',
      type: IsarType.long,
    ),
    r'retry': PropertySchema(
      id: 9,
      name: r'retry',
      type: IsarType.long,
    )
  },
  estimateSize: _flashcardHistoryAnswerLocalModelEstimateSize,
  serialize: _flashcardHistoryAnswerLocalModelSerialize,
  deserialize: _flashcardHistoryAnswerLocalModelDeserialize,
  deserializeProp: _flashcardHistoryAnswerLocalModelDeserializeProp,
);

int _flashcardHistoryAnswerLocalModelEstimateSize(
  FlashcardHistoryAnswerLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.answer;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.fillBlankAnswer;
    if (value != null) {
      bytesCount += 3 +
          QuizFillBlankAnswerLocalModelSchema.estimateSize(
              value, allOffsets[QuizFillBlankAnswerLocalModel]!, allOffsets);
    }
  }
  {
    final value = object.fillBlankQuestion;
    if (value != null) {
      bytesCount += 3 +
          QuizFillBlankLocalModelSchema.estimateSize(
              value, allOffsets[QuizFillBlankLocalModel]!, allOffsets);
    }
  }
  {
    final value = object.groupAnswer;
    if (value != null) {
      bytesCount += 3 +
          QuizGroupAnswerLocalModelSchema.estimateSize(
              value, allOffsets[QuizGroupAnswerLocalModel]!, allOffsets);
    }
  }
  {
    final value = object.groupQuestion;
    if (value != null) {
      bytesCount += 3 +
          QuizGroupLocalModelSchema.estimateSize(
              value, allOffsets[QuizGroupLocalModel]!, allOffsets);
    }
  }
  {
    final value = object.multipleChoiceAnswer;
    if (value != null) {
      bytesCount += 3 +
          QuizChoiceAnswerLocalModelSchema.estimateSize(
              value, allOffsets[QuizChoiceAnswerLocalModel]!, allOffsets);
    }
  }
  {
    final value = object.multipleChoiceQuestion;
    if (value != null) {
      bytesCount += 3 +
          QuizChoiceLocalModelSchema.estimateSize(
              value, allOffsets[QuizChoiceLocalModel]!, allOffsets);
    }
  }
  {
    final value = object.question;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _flashcardHistoryAnswerLocalModelSerialize(
  FlashcardHistoryAnswerLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.answer);
  writer.writeObject<QuizFillBlankAnswerLocalModel>(
    offsets[1],
    allOffsets,
    QuizFillBlankAnswerLocalModelSchema.serialize,
    object.fillBlankAnswer,
  );
  writer.writeObject<QuizFillBlankLocalModel>(
    offsets[2],
    allOffsets,
    QuizFillBlankLocalModelSchema.serialize,
    object.fillBlankQuestion,
  );
  writer.writeObject<QuizGroupAnswerLocalModel>(
    offsets[3],
    allOffsets,
    QuizGroupAnswerLocalModelSchema.serialize,
    object.groupAnswer,
  );
  writer.writeObject<QuizGroupLocalModel>(
    offsets[4],
    allOffsets,
    QuizGroupLocalModelSchema.serialize,
    object.groupQuestion,
  );
  writer.writeObject<QuizChoiceAnswerLocalModel>(
    offsets[5],
    allOffsets,
    QuizChoiceAnswerLocalModelSchema.serialize,
    object.multipleChoiceAnswer,
  );
  writer.writeObject<QuizChoiceLocalModel>(
    offsets[6],
    allOffsets,
    QuizChoiceLocalModelSchema.serialize,
    object.multipleChoiceQuestion,
  );
  writer.writeString(offsets[7], object.question);
  writer.writeLong(offsets[8], object.quizType);
  writer.writeLong(offsets[9], object.retry);
}

FlashcardHistoryAnswerLocalModel _flashcardHistoryAnswerLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FlashcardHistoryAnswerLocalModel(
    answer: reader.readStringOrNull(offsets[0]),
    fillBlankAnswer: reader.readObjectOrNull<QuizFillBlankAnswerLocalModel>(
      offsets[1],
      QuizFillBlankAnswerLocalModelSchema.deserialize,
      allOffsets,
    ),
    fillBlankQuestion: reader.readObjectOrNull<QuizFillBlankLocalModel>(
      offsets[2],
      QuizFillBlankLocalModelSchema.deserialize,
      allOffsets,
    ),
    groupAnswer: reader.readObjectOrNull<QuizGroupAnswerLocalModel>(
      offsets[3],
      QuizGroupAnswerLocalModelSchema.deserialize,
      allOffsets,
    ),
    groupQuestion: reader.readObjectOrNull<QuizGroupLocalModel>(
      offsets[4],
      QuizGroupLocalModelSchema.deserialize,
      allOffsets,
    ),
    multipleChoiceAnswer: reader.readObjectOrNull<QuizChoiceAnswerLocalModel>(
      offsets[5],
      QuizChoiceAnswerLocalModelSchema.deserialize,
      allOffsets,
    ),
    multipleChoiceQuestion: reader.readObjectOrNull<QuizChoiceLocalModel>(
      offsets[6],
      QuizChoiceLocalModelSchema.deserialize,
      allOffsets,
    ),
    question: reader.readStringOrNull(offsets[7]),
    quizType: reader.readLongOrNull(offsets[8]),
    retry: reader.readLongOrNull(offsets[9]),
  );
  return object;
}

P _flashcardHistoryAnswerLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<QuizFillBlankAnswerLocalModel>(
        offset,
        QuizFillBlankAnswerLocalModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readObjectOrNull<QuizFillBlankLocalModel>(
        offset,
        QuizFillBlankLocalModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readObjectOrNull<QuizGroupAnswerLocalModel>(
        offset,
        QuizGroupAnswerLocalModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 4:
      return (reader.readObjectOrNull<QuizGroupLocalModel>(
        offset,
        QuizGroupLocalModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 5:
      return (reader.readObjectOrNull<QuizChoiceAnswerLocalModel>(
        offset,
        QuizChoiceAnswerLocalModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 6:
      return (reader.readObjectOrNull<QuizChoiceLocalModel>(
        offset,
        QuizChoiceLocalModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension FlashcardHistoryAnswerLocalModelQueryFilter on QueryBuilder<
    FlashcardHistoryAnswerLocalModel,
    FlashcardHistoryAnswerLocalModel,
    QFilterCondition> {
  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> answerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'answer',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> answerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'answer',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> answerEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> answerGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> answerLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> answerBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'answer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> answerStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> answerEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
          FlashcardHistoryAnswerLocalModel, QAfterFilterCondition>
      answerContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'answer',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
          FlashcardHistoryAnswerLocalModel, QAfterFilterCondition>
      answerMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'answer',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> answerIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'answer',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> answerIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'answer',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> fillBlankAnswerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fillBlankAnswer',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> fillBlankAnswerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fillBlankAnswer',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> fillBlankQuestionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fillBlankQuestion',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> fillBlankQuestionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fillBlankQuestion',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> groupAnswerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groupAnswer',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> groupAnswerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groupAnswer',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> groupQuestionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'groupQuestion',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> groupQuestionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'groupQuestion',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> multipleChoiceAnswerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'multipleChoiceAnswer',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> multipleChoiceAnswerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'multipleChoiceAnswer',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> multipleChoiceQuestionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'multipleChoiceQuestion',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> multipleChoiceQuestionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'multipleChoiceQuestion',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> questionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'question',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> questionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'question',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> questionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> questionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> questionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> questionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'question',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> questionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> questionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
          FlashcardHistoryAnswerLocalModel, QAfterFilterCondition>
      questionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
          FlashcardHistoryAnswerLocalModel, QAfterFilterCondition>
      questionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'question',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> questionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'question',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> questionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'question',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> quizTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quizType',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> quizTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quizType',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> quizTypeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizType',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> quizTypeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quizType',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> quizTypeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quizType',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> quizTypeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quizType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> retryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'retry',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> retryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'retry',
      ));
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> retryEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'retry',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> retryGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'retry',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> retryLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'retry',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel, QAfterFilterCondition> retryBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'retry',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FlashcardHistoryAnswerLocalModelQueryObject on QueryBuilder<
    FlashcardHistoryAnswerLocalModel,
    FlashcardHistoryAnswerLocalModel,
    QFilterCondition> {
  QueryBuilder<FlashcardHistoryAnswerLocalModel,
          FlashcardHistoryAnswerLocalModel, QAfterFilterCondition>
      fillBlankAnswer(FilterQuery<QuizFillBlankAnswerLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'fillBlankAnswer');
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
          FlashcardHistoryAnswerLocalModel, QAfterFilterCondition>
      fillBlankQuestion(FilterQuery<QuizFillBlankLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'fillBlankQuestion');
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
          FlashcardHistoryAnswerLocalModel, QAfterFilterCondition>
      groupAnswer(FilterQuery<QuizGroupAnswerLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'groupAnswer');
    });
  }

  QueryBuilder<
      FlashcardHistoryAnswerLocalModel,
      FlashcardHistoryAnswerLocalModel,
      QAfterFilterCondition> groupQuestion(FilterQuery<QuizGroupLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'groupQuestion');
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
          FlashcardHistoryAnswerLocalModel, QAfterFilterCondition>
      multipleChoiceAnswer(FilterQuery<QuizChoiceAnswerLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'multipleChoiceAnswer');
    });
  }

  QueryBuilder<FlashcardHistoryAnswerLocalModel,
          FlashcardHistoryAnswerLocalModel, QAfterFilterCondition>
      multipleChoiceQuestion(FilterQuery<QuizChoiceLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'multipleChoiceQuestion');
    });
  }
}

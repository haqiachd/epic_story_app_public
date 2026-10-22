// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_quiz_local_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const FlashcardQuizLocalModelSchema = Schema(
  name: r'FlashcardQuizLocalModel',
  id: 1682075594488787305,
  properties: {
    r'explanation': PropertySchema(
      id: 0,
      name: r'explanation',
      type: IsarType.string,
    ),
    r'fillBlank': PropertySchema(
      id: 1,
      name: r'fillBlank',
      type: IsarType.object,
      target: r'QuizFillBlankLocalModel',
    ),
    r'group': PropertySchema(
      id: 2,
      name: r'group',
      type: IsarType.object,
      target: r'QuizGroupLocalModel',
    ),
    r'multipleChoice': PropertySchema(
      id: 3,
      name: r'multipleChoice',
      type: IsarType.object,
      target: r'QuizChoiceLocalModel',
    ),
    r'quizData': PropertySchema(
      id: 4,
      name: r'quizData',
      type: IsarType.string,
    ),
    r'quizType': PropertySchema(
      id: 5,
      name: r'quizType',
      type: IsarType.long,
    )
  },
  estimateSize: _flashcardQuizLocalModelEstimateSize,
  serialize: _flashcardQuizLocalModelSerialize,
  deserialize: _flashcardQuizLocalModelDeserialize,
  deserializeProp: _flashcardQuizLocalModelDeserializeProp,
);

int _flashcardQuizLocalModelEstimateSize(
  FlashcardQuizLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.explanation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.fillBlank;
    if (value != null) {
      bytesCount += 3 +
          QuizFillBlankLocalModelSchema.estimateSize(
              value, allOffsets[QuizFillBlankLocalModel]!, allOffsets);
    }
  }
  {
    final value = object.group;
    if (value != null) {
      bytesCount += 3 +
          QuizGroupLocalModelSchema.estimateSize(
              value, allOffsets[QuizGroupLocalModel]!, allOffsets);
    }
  }
  {
    final value = object.multipleChoice;
    if (value != null) {
      bytesCount += 3 +
          QuizChoiceLocalModelSchema.estimateSize(
              value, allOffsets[QuizChoiceLocalModel]!, allOffsets);
    }
  }
  {
    final value = object.quizData;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _flashcardQuizLocalModelSerialize(
  FlashcardQuizLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.explanation);
  writer.writeObject<QuizFillBlankLocalModel>(
    offsets[1],
    allOffsets,
    QuizFillBlankLocalModelSchema.serialize,
    object.fillBlank,
  );
  writer.writeObject<QuizGroupLocalModel>(
    offsets[2],
    allOffsets,
    QuizGroupLocalModelSchema.serialize,
    object.group,
  );
  writer.writeObject<QuizChoiceLocalModel>(
    offsets[3],
    allOffsets,
    QuizChoiceLocalModelSchema.serialize,
    object.multipleChoice,
  );
  writer.writeString(offsets[4], object.quizData);
  writer.writeLong(offsets[5], object.quizType);
}

FlashcardQuizLocalModel _flashcardQuizLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FlashcardQuizLocalModel(
    explanation: reader.readStringOrNull(offsets[0]),
    fillBlank: reader.readObjectOrNull<QuizFillBlankLocalModel>(
      offsets[1],
      QuizFillBlankLocalModelSchema.deserialize,
      allOffsets,
    ),
    group: reader.readObjectOrNull<QuizGroupLocalModel>(
      offsets[2],
      QuizGroupLocalModelSchema.deserialize,
      allOffsets,
    ),
    multipleChoice: reader.readObjectOrNull<QuizChoiceLocalModel>(
      offsets[3],
      QuizChoiceLocalModelSchema.deserialize,
      allOffsets,
    ),
    quizData: reader.readStringOrNull(offsets[4]),
    quizType: reader.readLongOrNull(offsets[5]),
  );
  return object;
}

P _flashcardQuizLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<QuizFillBlankLocalModel>(
        offset,
        QuizFillBlankLocalModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readObjectOrNull<QuizGroupLocalModel>(
        offset,
        QuizGroupLocalModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readObjectOrNull<QuizChoiceLocalModel>(
        offset,
        QuizChoiceLocalModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension FlashcardQuizLocalModelQueryFilter on QueryBuilder<
    FlashcardQuizLocalModel, FlashcardQuizLocalModel, QFilterCondition> {
  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> explanationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'explanation',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> explanationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'explanation',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> explanationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> explanationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> explanationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> explanationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'explanation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> explanationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> explanationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
          QAfterFilterCondition>
      explanationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
          QAfterFilterCondition>
      explanationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'explanation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> explanationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'explanation',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> explanationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'explanation',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> fillBlankIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fillBlank',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> fillBlankIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fillBlank',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> groupIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'group',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> groupIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'group',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> multipleChoiceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'multipleChoice',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> multipleChoiceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'multipleChoice',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizDataIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quizData',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizDataIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quizData',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizDataEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizDataGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quizData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizDataLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quizData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizDataBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quizData',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizDataStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'quizData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizDataEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'quizData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
          QAfterFilterCondition>
      quizDataContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'quizData',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
          QAfterFilterCondition>
      quizDataMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'quizData',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizDataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizData',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizDataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'quizData',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quizType',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quizType',
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizTypeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizType',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
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

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizTypeLessThan(
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

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> quizTypeBetween(
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
}

extension FlashcardQuizLocalModelQueryObject on QueryBuilder<
    FlashcardQuizLocalModel, FlashcardQuizLocalModel, QFilterCondition> {
  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> fillBlank(FilterQuery<QuizFillBlankLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'fillBlank');
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
      QAfterFilterCondition> group(FilterQuery<QuizGroupLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'group');
    });
  }

  QueryBuilder<FlashcardQuizLocalModel, FlashcardQuizLocalModel,
          QAfterFilterCondition>
      multipleChoice(FilterQuery<QuizChoiceLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'multipleChoice');
    });
  }
}

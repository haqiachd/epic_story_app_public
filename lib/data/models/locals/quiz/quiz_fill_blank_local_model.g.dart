// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_fill_blank_local_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const QuizFillBlankLocalModelSchema = Schema(
  name: r'QuizFillBlankLocalModel',
  id: 352136097679444735,
  properties: {
    r'explanation': PropertySchema(
      id: 0,
      name: r'explanation',
      type: IsarType.string,
    ),
    r'options': PropertySchema(
      id: 1,
      name: r'options',
      type: IsarType.objectList,
      target: r'QuizFillBlankOptionLocalModel',
    ),
    r'sentence': PropertySchema(
      id: 2,
      name: r'sentence',
      type: IsarType.objectList,
      target: r'QuizFillBlankSentenceLocalModel',
    )
  },
  estimateSize: _quizFillBlankLocalModelEstimateSize,
  serialize: _quizFillBlankLocalModelSerialize,
  deserialize: _quizFillBlankLocalModelDeserialize,
  deserializeProp: _quizFillBlankLocalModelDeserializeProp,
);

int _quizFillBlankLocalModelEstimateSize(
  QuizFillBlankLocalModel object,
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
    final list = object.options;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[QuizFillBlankOptionLocalModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += QuizFillBlankOptionLocalModelSchema.estimateSize(
              value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final list = object.sentence;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[QuizFillBlankSentenceLocalModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += QuizFillBlankSentenceLocalModelSchema.estimateSize(
              value, offsets, allOffsets);
        }
      }
    }
  }
  return bytesCount;
}

void _quizFillBlankLocalModelSerialize(
  QuizFillBlankLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.explanation);
  writer.writeObjectList<QuizFillBlankOptionLocalModel>(
    offsets[1],
    allOffsets,
    QuizFillBlankOptionLocalModelSchema.serialize,
    object.options,
  );
  writer.writeObjectList<QuizFillBlankSentenceLocalModel>(
    offsets[2],
    allOffsets,
    QuizFillBlankSentenceLocalModelSchema.serialize,
    object.sentence,
  );
}

QuizFillBlankLocalModel _quizFillBlankLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuizFillBlankLocalModel(
    explanation: reader.readStringOrNull(offsets[0]),
    options: reader.readObjectList<QuizFillBlankOptionLocalModel>(
      offsets[1],
      QuizFillBlankOptionLocalModelSchema.deserialize,
      allOffsets,
      QuizFillBlankOptionLocalModel(),
    ),
    sentence: reader.readObjectList<QuizFillBlankSentenceLocalModel>(
      offsets[2],
      QuizFillBlankSentenceLocalModelSchema.deserialize,
      allOffsets,
      QuizFillBlankSentenceLocalModel(),
    ),
  );
  return object;
}

P _quizFillBlankLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectList<QuizFillBlankOptionLocalModel>(
        offset,
        QuizFillBlankOptionLocalModelSchema.deserialize,
        allOffsets,
        QuizFillBlankOptionLocalModel(),
      )) as P;
    case 2:
      return (reader.readObjectList<QuizFillBlankSentenceLocalModel>(
        offset,
        QuizFillBlankSentenceLocalModelSchema.deserialize,
        allOffsets,
        QuizFillBlankSentenceLocalModel(),
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension QuizFillBlankLocalModelQueryFilter on QueryBuilder<
    QuizFillBlankLocalModel, QuizFillBlankLocalModel, QFilterCondition> {
  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> explanationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'explanation',
      ));
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> explanationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'explanation',
      ));
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
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

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
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

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
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

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
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

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
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

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
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

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
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

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
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

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> explanationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'explanation',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> explanationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'explanation',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> optionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'options',
      ));
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> optionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'options',
      ));
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> optionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> optionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> optionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> optionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> optionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> optionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'options',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> sentenceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sentence',
      ));
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> sentenceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sentence',
      ));
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> sentenceLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sentence',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> sentenceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sentence',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> sentenceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sentence',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> sentenceLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sentence',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> sentenceLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sentence',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
      QAfterFilterCondition> sentenceLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'sentence',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension QuizFillBlankLocalModelQueryObject on QueryBuilder<
    QuizFillBlankLocalModel, QuizFillBlankLocalModel, QFilterCondition> {
  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
          QAfterFilterCondition>
      optionsElement(FilterQuery<QuizFillBlankOptionLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'options');
    });
  }

  QueryBuilder<QuizFillBlankLocalModel, QuizFillBlankLocalModel,
          QAfterFilterCondition>
      sentenceElement(FilterQuery<QuizFillBlankSentenceLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'sentence');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const QuizFillBlankSentenceLocalModelSchema = Schema(
  name: r'QuizFillBlankSentenceLocalModel',
  id: -1294368904712740667,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.string,
    ),
    r'type': PropertySchema(
      id: 1,
      name: r'type',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 2,
      name: r'value',
      type: IsarType.string,
    )
  },
  estimateSize: _quizFillBlankSentenceLocalModelEstimateSize,
  serialize: _quizFillBlankSentenceLocalModelSerialize,
  deserialize: _quizFillBlankSentenceLocalModelDeserialize,
  deserializeProp: _quizFillBlankSentenceLocalModelDeserializeProp,
);

int _quizFillBlankSentenceLocalModelEstimateSize(
  QuizFillBlankSentenceLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.id;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.type;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.value;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _quizFillBlankSentenceLocalModelSerialize(
  QuizFillBlankSentenceLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.id);
  writer.writeString(offsets[1], object.type);
  writer.writeString(offsets[2], object.value);
}

QuizFillBlankSentenceLocalModel _quizFillBlankSentenceLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuizFillBlankSentenceLocalModel(
    id: reader.readStringOrNull(offsets[0]),
    type: reader.readStringOrNull(offsets[1]),
    value: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _quizFillBlankSentenceLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension QuizFillBlankSentenceLocalModelQueryFilter on QueryBuilder<
    QuizFillBlankSentenceLocalModel,
    QuizFillBlankSentenceLocalModel,
    QFilterCondition> {
  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> idEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> idGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> idLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> idBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
          QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
          QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> typeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> typeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> typeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> typeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
          QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
          QAfterFilterCondition>
      typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> valueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> valueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> valueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> valueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> valueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
          QAfterFilterCondition>
      valueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
          QAfterFilterCondition>
      valueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'value',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizFillBlankSentenceLocalModel, QuizFillBlankSentenceLocalModel,
      QAfterFilterCondition> valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'value',
        value: '',
      ));
    });
  }
}

extension QuizFillBlankSentenceLocalModelQueryObject on QueryBuilder<
    QuizFillBlankSentenceLocalModel,
    QuizFillBlankSentenceLocalModel,
    QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const QuizFillBlankOptionLocalModelSchema = Schema(
  name: r'QuizFillBlankOptionLocalModel',
  id: 8912052767126938627,
  properties: {
    r'correctBlankId': PropertySchema(
      id: 0,
      name: r'correctBlankId',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 1,
      name: r'id',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 2,
      name: r'value',
      type: IsarType.string,
    )
  },
  estimateSize: _quizFillBlankOptionLocalModelEstimateSize,
  serialize: _quizFillBlankOptionLocalModelSerialize,
  deserialize: _quizFillBlankOptionLocalModelDeserialize,
  deserializeProp: _quizFillBlankOptionLocalModelDeserializeProp,
);

int _quizFillBlankOptionLocalModelEstimateSize(
  QuizFillBlankOptionLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.correctBlankId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.id;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.value;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _quizFillBlankOptionLocalModelSerialize(
  QuizFillBlankOptionLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.correctBlankId);
  writer.writeString(offsets[1], object.id);
  writer.writeString(offsets[2], object.value);
}

QuizFillBlankOptionLocalModel _quizFillBlankOptionLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuizFillBlankOptionLocalModel(
    correctBlankId: reader.readStringOrNull(offsets[0]),
    id: reader.readStringOrNull(offsets[1]),
    value: reader.readStringOrNull(offsets[2]),
  );
  return object;
}

P _quizFillBlankOptionLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension QuizFillBlankOptionLocalModelQueryFilter on QueryBuilder<
    QuizFillBlankOptionLocalModel,
    QuizFillBlankOptionLocalModel,
    QFilterCondition> {
  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> correctBlankIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'correctBlankId',
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> correctBlankIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'correctBlankId',
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> correctBlankIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctBlankId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> correctBlankIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correctBlankId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> correctBlankIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correctBlankId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> correctBlankIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correctBlankId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> correctBlankIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'correctBlankId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> correctBlankIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'correctBlankId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
          QAfterFilterCondition>
      correctBlankIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'correctBlankId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
          QAfterFilterCondition>
      correctBlankIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'correctBlankId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> correctBlankIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctBlankId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> correctBlankIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'correctBlankId',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> idEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> idGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> idLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> idBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
          QAfterFilterCondition>
      idContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
          QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> valueIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> valueIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'value',
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> valueEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> valueGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> valueLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> valueBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> valueStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> valueEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
          QAfterFilterCondition>
      valueContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'value',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
          QAfterFilterCondition>
      valueMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'value',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> valueIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizFillBlankOptionLocalModel, QuizFillBlankOptionLocalModel,
      QAfterFilterCondition> valueIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'value',
        value: '',
      ));
    });
  }
}

extension QuizFillBlankOptionLocalModelQueryObject on QueryBuilder<
    QuizFillBlankOptionLocalModel,
    QuizFillBlankOptionLocalModel,
    QFilterCondition> {}

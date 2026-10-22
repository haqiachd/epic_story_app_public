// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_history_card_local_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const FlashcardHistoryCardLocalModelSchema = Schema(
  name: r'FlashcardHistoryCardLocalModel',
  id: 2374345074267542271,
  properties: {
    r'completedQuiz': PropertySchema(
      id: 0,
      name: r'completedQuiz',
      type: IsarType.bool,
    ),
    r'correctAnswer': PropertySchema(
      id: 1,
      name: r'correctAnswer',
      type: IsarType.bool,
    ),
    r'historyAnswer': PropertySchema(
      id: 2,
      name: r'historyAnswer',
      type: IsarType.object,
      target: r'FlashcardHistoryAnswerLocalModel',
    ),
    r'isQuiz': PropertySchema(
      id: 3,
      name: r'isQuiz',
      type: IsarType.bool,
    ),
    r'isQuizAlreadyGenerated': PropertySchema(
      id: 4,
      name: r'isQuizAlreadyGenerated',
      type: IsarType.bool,
    ),
    r'isRead': PropertySchema(
      id: 5,
      name: r'isRead',
      type: IsarType.bool,
    ),
    r'nPage': PropertySchema(
      id: 6,
      name: r'nPage',
      type: IsarType.long,
    ),
    r'screenshot': PropertySchema(
      id: 7,
      name: r'screenshot',
      type: IsarType.string,
    )
  },
  estimateSize: _flashcardHistoryCardLocalModelEstimateSize,
  serialize: _flashcardHistoryCardLocalModelSerialize,
  deserialize: _flashcardHistoryCardLocalModelDeserialize,
  deserializeProp: _flashcardHistoryCardLocalModelDeserializeProp,
);

int _flashcardHistoryCardLocalModelEstimateSize(
  FlashcardHistoryCardLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.historyAnswer;
    if (value != null) {
      bytesCount += 3 +
          FlashcardHistoryAnswerLocalModelSchema.estimateSize(
              value, allOffsets[FlashcardHistoryAnswerLocalModel]!, allOffsets);
    }
  }
  {
    final value = object.screenshot;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _flashcardHistoryCardLocalModelSerialize(
  FlashcardHistoryCardLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.completedQuiz);
  writer.writeBool(offsets[1], object.correctAnswer);
  writer.writeObject<FlashcardHistoryAnswerLocalModel>(
    offsets[2],
    allOffsets,
    FlashcardHistoryAnswerLocalModelSchema.serialize,
    object.historyAnswer,
  );
  writer.writeBool(offsets[3], object.isQuiz);
  writer.writeBool(offsets[4], object.isQuizAlreadyGenerated);
  writer.writeBool(offsets[5], object.isRead);
  writer.writeLong(offsets[6], object.nPage);
  writer.writeString(offsets[7], object.screenshot);
}

FlashcardHistoryCardLocalModel _flashcardHistoryCardLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FlashcardHistoryCardLocalModel(
    completedQuiz: reader.readBoolOrNull(offsets[0]),
    correctAnswer: reader.readBoolOrNull(offsets[1]),
    historyAnswer: reader.readObjectOrNull<FlashcardHistoryAnswerLocalModel>(
      offsets[2],
      FlashcardHistoryAnswerLocalModelSchema.deserialize,
      allOffsets,
    ),
    isQuiz: reader.readBoolOrNull(offsets[3]),
    isQuizAlreadyGenerated: reader.readBoolOrNull(offsets[4]),
    isRead: reader.readBoolOrNull(offsets[5]),
    nPage: reader.readLongOrNull(offsets[6]),
    screenshot: reader.readStringOrNull(offsets[7]),
  );
  return object;
}

P _flashcardHistoryCardLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<FlashcardHistoryAnswerLocalModel>(
        offset,
        FlashcardHistoryAnswerLocalModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension FlashcardHistoryCardLocalModelQueryFilter on QueryBuilder<
    FlashcardHistoryCardLocalModel,
    FlashcardHistoryCardLocalModel,
    QFilterCondition> {
  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> completedQuizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'completedQuiz',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> completedQuizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'completedQuiz',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> completedQuizEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> correctAnswerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'correctAnswer',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> correctAnswerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'correctAnswer',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> correctAnswerEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctAnswer',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> historyAnswerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'historyAnswer',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> historyAnswerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'historyAnswer',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> isQuizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isQuiz',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> isQuizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isQuiz',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> isQuizEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> isQuizAlreadyGeneratedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isQuizAlreadyGenerated',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> isQuizAlreadyGeneratedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isQuizAlreadyGenerated',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> isQuizAlreadyGeneratedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isQuizAlreadyGenerated',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> isReadIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isRead',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> isReadIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isRead',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> isReadEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isRead',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> nPageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nPage',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> nPageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nPage',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> nPageEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nPage',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> nPageGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nPage',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> nPageLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nPage',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> nPageBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nPage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> screenshotIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'screenshot',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> screenshotIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'screenshot',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> screenshotEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screenshot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> screenshotGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'screenshot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> screenshotLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'screenshot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> screenshotBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'screenshot',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> screenshotStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'screenshot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> screenshotEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'screenshot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
          QAfterFilterCondition>
      screenshotContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'screenshot',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
          QAfterFilterCondition>
      screenshotMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'screenshot',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> screenshotIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'screenshot',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
      QAfterFilterCondition> screenshotIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'screenshot',
        value: '',
      ));
    });
  }
}

extension FlashcardHistoryCardLocalModelQueryObject on QueryBuilder<
    FlashcardHistoryCardLocalModel,
    FlashcardHistoryCardLocalModel,
    QFilterCondition> {
  QueryBuilder<FlashcardHistoryCardLocalModel, FlashcardHistoryCardLocalModel,
          QAfterFilterCondition>
      historyAnswer(FilterQuery<FlashcardHistoryAnswerLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'historyAnswer');
    });
  }
}

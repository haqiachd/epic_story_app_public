// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_collection_detail_item_local_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const FlashCardCollectionDetailItemLocalModelSchema = Schema(
  name: r'FlashCardCollectionDetailItemLocalModel',
  id: 710716984212396734,
  properties: {
    r'category': PropertySchema(
      id: 0,
      name: r'category',
      type: IsarType.string,
    ),
    r'completedQuiz': PropertySchema(
      id: 1,
      name: r'completedQuiz',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'flashcardId': PropertySchema(
      id: 3,
      name: r'flashcardId',
      type: IsarType.string,
    ),
    r'summary': PropertySchema(
      id: 4,
      name: r'summary',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 5,
      name: r'title',
      type: IsarType.string,
    ),
    r'totalCards': PropertySchema(
      id: 6,
      name: r'totalCards',
      type: IsarType.long,
    ),
    r'totalQuiz': PropertySchema(
      id: 7,
      name: r'totalQuiz',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 8,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _flashCardCollectionDetailItemLocalModelEstimateSize,
  serialize: _flashCardCollectionDetailItemLocalModelSerialize,
  deserialize: _flashCardCollectionDetailItemLocalModelDeserialize,
  deserializeProp: _flashCardCollectionDetailItemLocalModelDeserializeProp,
);

int _flashCardCollectionDetailItemLocalModelEstimateSize(
  FlashCardCollectionDetailItemLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.category;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.flashcardId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.summary;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.title;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _flashCardCollectionDetailItemLocalModelSerialize(
  FlashCardCollectionDetailItemLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.category);
  writer.writeLong(offsets[1], object.completedQuiz);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeString(offsets[3], object.flashcardId);
  writer.writeString(offsets[4], object.summary);
  writer.writeString(offsets[5], object.title);
  writer.writeLong(offsets[6], object.totalCards);
  writer.writeLong(offsets[7], object.totalQuiz);
  writer.writeDateTime(offsets[8], object.updatedAt);
}

FlashCardCollectionDetailItemLocalModel
    _flashCardCollectionDetailItemLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FlashCardCollectionDetailItemLocalModel(
    category: reader.readStringOrNull(offsets[0]),
    completedQuiz: reader.readLongOrNull(offsets[1]),
    createdAt: reader.readDateTimeOrNull(offsets[2]),
    flashcardId: reader.readStringOrNull(offsets[3]),
    summary: reader.readStringOrNull(offsets[4]),
    title: reader.readStringOrNull(offsets[5]),
    totalCards: reader.readLongOrNull(offsets[6]),
    totalQuiz: reader.readLongOrNull(offsets[7]),
    updatedAt: reader.readDateTimeOrNull(offsets[8]),
  );
  return object;
}

P _flashCardCollectionDetailItemLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension FlashCardCollectionDetailItemLocalModelQueryFilter on QueryBuilder<
    FlashCardCollectionDetailItemLocalModel,
    FlashCardCollectionDetailItemLocalModel,
    QFilterCondition> {
  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> categoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> categoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> categoryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> categoryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> categoryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> categoryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'category',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> categoryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> categoryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailItemLocalModel,
          FlashCardCollectionDetailItemLocalModel, QAfterFilterCondition>
      categoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailItemLocalModel,
          FlashCardCollectionDetailItemLocalModel, QAfterFilterCondition>
      categoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> completedQuizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'completedQuiz',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> completedQuizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'completedQuiz',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> completedQuizEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> completedQuizGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'completedQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> completedQuizLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'completedQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> completedQuizBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'completedQuiz',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> createdAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> createdAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> flashcardIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flashcardId',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> flashcardIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flashcardId',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> flashcardIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flashcardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> flashcardIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'flashcardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> flashcardIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'flashcardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> flashcardIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'flashcardId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> flashcardIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'flashcardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> flashcardIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'flashcardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailItemLocalModel,
          FlashCardCollectionDetailItemLocalModel, QAfterFilterCondition>
      flashcardIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'flashcardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailItemLocalModel,
          FlashCardCollectionDetailItemLocalModel, QAfterFilterCondition>
      flashcardIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'flashcardId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> flashcardIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flashcardId',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> flashcardIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'flashcardId',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> summaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'summary',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> summaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'summary',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> summaryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'summary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> summaryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'summary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> summaryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'summary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> summaryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'summary',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> summaryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'summary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> summaryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'summary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailItemLocalModel,
          FlashCardCollectionDetailItemLocalModel, QAfterFilterCondition>
      summaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'summary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailItemLocalModel,
          FlashCardCollectionDetailItemLocalModel, QAfterFilterCondition>
      summaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'summary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> summaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'summary',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> summaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'summary',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> titleEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> titleGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> titleLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> titleBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailItemLocalModel,
          FlashCardCollectionDetailItemLocalModel, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailItemLocalModel,
          FlashCardCollectionDetailItemLocalModel, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> totalCardsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalCards',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> totalCardsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalCards',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> totalCardsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalCards',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> totalCardsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalCards',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> totalCardsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalCards',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> totalCardsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalCards',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> totalQuizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalQuiz',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> totalQuizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalQuiz',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> totalQuizEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> totalQuizGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> totalQuizLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> totalQuizBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalQuiz',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> updatedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> updatedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailItemLocalModel,
      FlashCardCollectionDetailItemLocalModel,
      QAfterFilterCondition> updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updatedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FlashCardCollectionDetailItemLocalModelQueryObject on QueryBuilder<
    FlashCardCollectionDetailItemLocalModel,
    FlashCardCollectionDetailItemLocalModel,
    QFilterCondition> {}

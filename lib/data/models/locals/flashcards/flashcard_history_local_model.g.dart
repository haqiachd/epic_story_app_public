// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_history_local_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFlashcardHistoryLocalModelCollection on Isar {
  IsarCollection<FlashcardHistoryLocalModel> get flashcardHistoryLocalModels =>
      this.collection();
}

const FlashcardHistoryLocalModelSchema = CollectionSchema(
  name: r'FlashcardHistoryLocalModel',
  id: 2691399744571891628,
  properties: {
    r'cards': PropertySchema(
      id: 0,
      name: r'cards',
      type: IsarType.objectList,
      target: r'FlashcardHistoryCardLocalModel',
    ),
    r'category': PropertySchema(
      id: 1,
      name: r'category',
      type: IsarType.string,
    ),
    r'claimedRewards': PropertySchema(
      id: 2,
      name: r'claimedRewards',
      type: IsarType.longList,
    ),
    r'completedQuiz': PropertySchema(
      id: 3,
      name: r'completedQuiz',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 4,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'finishedAt': PropertySchema(
      id: 5,
      name: r'finishedAt',
      type: IsarType.dateTime,
    ),
    r'flashcardId': PropertySchema(
      id: 6,
      name: r'flashcardId',
      type: IsarType.string,
    ),
    r'isFinished': PropertySchema(
      id: 7,
      name: r'isFinished',
      type: IsarType.bool,
    ),
    r'isHaveQuiz': PropertySchema(
      id: 8,
      name: r'isHaveQuiz',
      type: IsarType.bool,
    ),
    r'lastReadAt': PropertySchema(
      id: 9,
      name: r'lastReadAt',
      type: IsarType.dateTime,
    ),
    r'summary': PropertySchema(
      id: 10,
      name: r'summary',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 11,
      name: r'title',
      type: IsarType.string,
    ),
    r'totalCards': PropertySchema(
      id: 12,
      name: r'totalCards',
      type: IsarType.long,
    ),
    r'totalQuiz': PropertySchema(
      id: 13,
      name: r'totalQuiz',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 14,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _flashcardHistoryLocalModelEstimateSize,
  serialize: _flashcardHistoryLocalModelSerialize,
  deserialize: _flashcardHistoryLocalModelDeserialize,
  deserializeProp: _flashcardHistoryLocalModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'FlashcardHistoryCardLocalModel': FlashcardHistoryCardLocalModelSchema,
    r'FlashcardHistoryAnswerLocalModel': FlashcardHistoryAnswerLocalModelSchema,
    r'QuizChoiceLocalModel': QuizChoiceLocalModelSchema,
    r'QuizChoiceAnswerLocalModel': QuizChoiceAnswerLocalModelSchema,
    r'QuizFillBlankLocalModel': QuizFillBlankLocalModelSchema,
    r'QuizFillBlankSentenceLocalModel': QuizFillBlankSentenceLocalModelSchema,
    r'QuizFillBlankOptionLocalModel': QuizFillBlankOptionLocalModelSchema,
    r'QuizFillBlankAnswerLocalModel': QuizFillBlankAnswerLocalModelSchema,
    r'QuizGroupLocalModel': QuizGroupLocalModelSchema,
    r'QuizGroupItemLocalModel': QuizGroupItemLocalModelSchema,
    r'QuizGroupOptionLocalModel': QuizGroupOptionLocalModelSchema,
    r'QuizGroupAnswerLocalModel': QuizGroupAnswerLocalModelSchema
  },
  getId: _flashcardHistoryLocalModelGetId,
  getLinks: _flashcardHistoryLocalModelGetLinks,
  attach: _flashcardHistoryLocalModelAttach,
  version: '3.3.0',
);

int _flashcardHistoryLocalModelEstimateSize(
  FlashcardHistoryLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.cards;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[FlashcardHistoryCardLocalModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += FlashcardHistoryCardLocalModelSchema.estimateSize(
              value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.category;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.claimedRewards;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
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

void _flashcardHistoryLocalModelSerialize(
  FlashcardHistoryLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<FlashcardHistoryCardLocalModel>(
    offsets[0],
    allOffsets,
    FlashcardHistoryCardLocalModelSchema.serialize,
    object.cards,
  );
  writer.writeString(offsets[1], object.category);
  writer.writeLongList(offsets[2], object.claimedRewards);
  writer.writeLong(offsets[3], object.completedQuiz);
  writer.writeDateTime(offsets[4], object.createdAt);
  writer.writeDateTime(offsets[5], object.finishedAt);
  writer.writeString(offsets[6], object.flashcardId);
  writer.writeBool(offsets[7], object.isFinished);
  writer.writeBool(offsets[8], object.isHaveQuiz);
  writer.writeDateTime(offsets[9], object.lastReadAt);
  writer.writeString(offsets[10], object.summary);
  writer.writeString(offsets[11], object.title);
  writer.writeLong(offsets[12], object.totalCards);
  writer.writeLong(offsets[13], object.totalQuiz);
  writer.writeDateTime(offsets[14], object.updatedAt);
}

FlashcardHistoryLocalModel _flashcardHistoryLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FlashcardHistoryLocalModel(
    cards: reader.readObjectList<FlashcardHistoryCardLocalModel>(
      offsets[0],
      FlashcardHistoryCardLocalModelSchema.deserialize,
      allOffsets,
      FlashcardHistoryCardLocalModel(),
    ),
    category: reader.readStringOrNull(offsets[1]),
    claimedRewards: reader.readLongList(offsets[2]),
    completedQuiz: reader.readLongOrNull(offsets[3]),
    createdAt: reader.readDateTimeOrNull(offsets[4]),
    finishedAt: reader.readDateTimeOrNull(offsets[5]),
    flashcardId: reader.readStringOrNull(offsets[6]),
    isFinished: reader.readBoolOrNull(offsets[7]),
    isHaveQuiz: reader.readBoolOrNull(offsets[8]),
    lastReadAt: reader.readDateTimeOrNull(offsets[9]),
    summary: reader.readStringOrNull(offsets[10]),
    title: reader.readStringOrNull(offsets[11]),
    totalCards: reader.readLongOrNull(offsets[12]),
    totalQuiz: reader.readLongOrNull(offsets[13]),
    updatedAt: reader.readDateTimeOrNull(offsets[14]),
  );
  object.id = id;
  return object;
}

P _flashcardHistoryLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<FlashcardHistoryCardLocalModel>(
        offset,
        FlashcardHistoryCardLocalModelSchema.deserialize,
        allOffsets,
        FlashcardHistoryCardLocalModel(),
      )) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongList(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _flashcardHistoryLocalModelGetId(FlashcardHistoryLocalModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _flashcardHistoryLocalModelGetLinks(
    FlashcardHistoryLocalModel object) {
  return [];
}

void _flashcardHistoryLocalModelAttach(
    IsarCollection<dynamic> col, Id id, FlashcardHistoryLocalModel object) {
  object.id = id;
}

extension FlashcardHistoryLocalModelQueryWhereSort on QueryBuilder<
    FlashcardHistoryLocalModel, FlashcardHistoryLocalModel, QWhere> {
  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FlashcardHistoryLocalModelQueryWhere on QueryBuilder<
    FlashcardHistoryLocalModel, FlashcardHistoryLocalModel, QWhereClause> {
  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FlashcardHistoryLocalModelQueryFilter on QueryBuilder<
    FlashcardHistoryLocalModel, FlashcardHistoryLocalModel, QFilterCondition> {
  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> cardsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cards',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> cardsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cards',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> cardsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cards',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> cardsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cards',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> cardsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cards',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> cardsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cards',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> cardsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cards',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> cardsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'cards',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> categoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> categoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
          QAfterFilterCondition>
      categoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
          QAfterFilterCondition>
      categoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'claimedRewards',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'claimedRewards',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'claimedRewards',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'claimedRewards',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'claimedRewards',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'claimedRewards',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'claimedRewards',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'claimedRewards',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'claimedRewards',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'claimedRewards',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'claimedRewards',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'claimedRewards',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> completedQuizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'completedQuiz',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> completedQuizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'completedQuiz',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> completedQuizEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> finishedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'finishedAt',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> finishedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'finishedAt',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> finishedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finishedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> finishedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'finishedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> finishedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'finishedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> finishedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'finishedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> flashcardIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flashcardId',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> flashcardIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flashcardId',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
          QAfterFilterCondition>
      flashcardIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'flashcardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
          QAfterFilterCondition>
      flashcardIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'flashcardId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> flashcardIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flashcardId',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> flashcardIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'flashcardId',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> isFinishedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isFinished',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> isFinishedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isFinished',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> isFinishedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFinished',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> isHaveQuizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isHaveQuiz',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> isHaveQuizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isHaveQuiz',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> isHaveQuizEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isHaveQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> lastReadAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastReadAt',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> lastReadAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastReadAt',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> lastReadAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastReadAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> lastReadAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastReadAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> lastReadAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastReadAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> lastReadAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastReadAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> summaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'summary',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> summaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'summary',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
          QAfterFilterCondition>
      summaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'summary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
          QAfterFilterCondition>
      summaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'summary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> summaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'summary',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> summaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'summary',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
          QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
          QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> totalCardsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalCards',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> totalCardsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalCards',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> totalCardsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalCards',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> totalQuizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalQuiz',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> totalQuizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalQuiz',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> totalQuizEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterFilterCondition> updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
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

extension FlashcardHistoryLocalModelQueryObject on QueryBuilder<
    FlashcardHistoryLocalModel, FlashcardHistoryLocalModel, QFilterCondition> {
  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
          QAfterFilterCondition>
      cardsElement(FilterQuery<FlashcardHistoryCardLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'cards');
    });
  }
}

extension FlashcardHistoryLocalModelQueryLinks on QueryBuilder<
    FlashcardHistoryLocalModel, FlashcardHistoryLocalModel, QFilterCondition> {}

extension FlashcardHistoryLocalModelQuerySortBy on QueryBuilder<
    FlashcardHistoryLocalModel, FlashcardHistoryLocalModel, QSortBy> {
  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByCompletedQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedQuiz', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByCompletedQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedQuiz', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByFinishedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishedAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByFinishedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishedAt', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByFlashcardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flashcardId', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByFlashcardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flashcardId', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByIsFinished() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinished', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByIsFinishedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinished', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByIsHaveQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByIsHaveQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByLastReadAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReadAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByLastReadAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReadAt', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortBySummary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortBySummaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByTotalCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByTotalCardsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByTotalQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuiz', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByTotalQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuiz', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension FlashcardHistoryLocalModelQuerySortThenBy on QueryBuilder<
    FlashcardHistoryLocalModel, FlashcardHistoryLocalModel, QSortThenBy> {
  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByCompletedQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedQuiz', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByCompletedQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedQuiz', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByFinishedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishedAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByFinishedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishedAt', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByFlashcardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flashcardId', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByFlashcardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flashcardId', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByIsFinished() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinished', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByIsFinishedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinished', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByIsHaveQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByIsHaveQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByLastReadAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReadAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByLastReadAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReadAt', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenBySummary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenBySummaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByTotalCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByTotalCardsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByTotalQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuiz', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByTotalQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuiz', Sort.desc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension FlashcardHistoryLocalModelQueryWhereDistinct on QueryBuilder<
    FlashcardHistoryLocalModel, FlashcardHistoryLocalModel, QDistinct> {
  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QDistinct> distinctByCategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QDistinct> distinctByClaimedRewards() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'claimedRewards');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QDistinct> distinctByCompletedQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedQuiz');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QDistinct> distinctByFinishedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'finishedAt');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QDistinct> distinctByFlashcardId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flashcardId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QDistinct> distinctByIsFinished() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFinished');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QDistinct> distinctByIsHaveQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isHaveQuiz');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QDistinct> distinctByLastReadAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastReadAt');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QDistinct> distinctBySummary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'summary', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QDistinct> distinctByTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QDistinct> distinctByTotalCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalCards');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QDistinct> distinctByTotalQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalQuiz');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, FlashcardHistoryLocalModel,
      QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension FlashcardHistoryLocalModelQueryProperty on QueryBuilder<
    FlashcardHistoryLocalModel, FlashcardHistoryLocalModel, QQueryProperty> {
  QueryBuilder<FlashcardHistoryLocalModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel,
      List<FlashcardHistoryCardLocalModel>?, QQueryOperations> cardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cards');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, String?, QQueryOperations>
      categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, List<int>?, QQueryOperations>
      claimedRewardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'claimedRewards');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, int?, QQueryOperations>
      completedQuizProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedQuiz');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, DateTime?, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, DateTime?, QQueryOperations>
      finishedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'finishedAt');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, String?, QQueryOperations>
      flashcardIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flashcardId');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, bool?, QQueryOperations>
      isFinishedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFinished');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, bool?, QQueryOperations>
      isHaveQuizProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isHaveQuiz');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, DateTime?, QQueryOperations>
      lastReadAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastReadAt');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, String?, QQueryOperations>
      summaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'summary');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, String?, QQueryOperations>
      titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, int?, QQueryOperations>
      totalCardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalCards');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, int?, QQueryOperations>
      totalQuizProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalQuiz');
    });
  }

  QueryBuilder<FlashcardHistoryLocalModel, DateTime?, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}

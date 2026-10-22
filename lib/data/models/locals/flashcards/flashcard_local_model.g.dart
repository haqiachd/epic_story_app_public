// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_local_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFlashcardLocalModelCollection on Isar {
  IsarCollection<FlashcardLocalModel> get flashcardLocalModels =>
      this.collection();
}

const FlashcardLocalModelSchema = CollectionSchema(
  name: r'FlashcardLocalModel',
  id: 8899367614812279079,
  properties: {
    r'cards': PropertySchema(
      id: 0,
      name: r'cards',
      type: IsarType.objectList,
      target: r'FlashcardCardLocalModel',
    ),
    r'category': PropertySchema(
      id: 1,
      name: r'category',
      type: IsarType.string,
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
    r'grades': PropertySchema(
      id: 4,
      name: r'grades',
      type: IsarType.longList,
    ),
    r'isGenerateQuizSupported': PropertySchema(
      id: 5,
      name: r'isGenerateQuizSupported',
      type: IsarType.bool,
    ),
    r'isHaveQuiz': PropertySchema(
      id: 6,
      name: r'isHaveQuiz',
      type: IsarType.bool,
    ),
    r'reactions': PropertySchema(
      id: 7,
      name: r'reactions',
      type: IsarType.object,
      target: r'BookReactionLocalModel',
    ),
    r'reads': PropertySchema(
      id: 8,
      name: r'reads',
      type: IsarType.long,
    ),
    r'rewards': PropertySchema(
      id: 9,
      name: r'rewards',
      type: IsarType.stringList,
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
  estimateSize: _flashcardLocalModelEstimateSize,
  serialize: _flashcardLocalModelSerialize,
  deserialize: _flashcardLocalModelDeserialize,
  deserializeProp: _flashcardLocalModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'BookReactionLocalModel': BookReactionLocalModelSchema,
    r'FlashcardCardLocalModel': FlashcardCardLocalModelSchema,
    r'FlashcardQuizLocalModel': FlashcardQuizLocalModelSchema,
    r'QuizChoiceLocalModel': QuizChoiceLocalModelSchema,
    r'QuizFillBlankLocalModel': QuizFillBlankLocalModelSchema,
    r'QuizFillBlankSentenceLocalModel': QuizFillBlankSentenceLocalModelSchema,
    r'QuizFillBlankOptionLocalModel': QuizFillBlankOptionLocalModelSchema,
    r'QuizGroupLocalModel': QuizGroupLocalModelSchema,
    r'QuizGroupItemLocalModel': QuizGroupItemLocalModelSchema,
    r'QuizGroupOptionLocalModel': QuizGroupOptionLocalModelSchema
  },
  getId: _flashcardLocalModelGetId,
  getLinks: _flashcardLocalModelGetLinks,
  attach: _flashcardLocalModelAttach,
  version: '3.3.0',
);

int _flashcardLocalModelEstimateSize(
  FlashcardLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.cards;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[FlashcardCardLocalModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += FlashcardCardLocalModelSchema.estimateSize(
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
    final value = object.flashcardId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.grades;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.reactions;
    if (value != null) {
      bytesCount += 3 +
          BookReactionLocalModelSchema.estimateSize(
              value, allOffsets[BookReactionLocalModel]!, allOffsets);
    }
  }
  {
    final list = object.rewards;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
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

void _flashcardLocalModelSerialize(
  FlashcardLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<FlashcardCardLocalModel>(
    offsets[0],
    allOffsets,
    FlashcardCardLocalModelSchema.serialize,
    object.cards,
  );
  writer.writeString(offsets[1], object.category);
  writer.writeDateTime(offsets[2], object.createdAt);
  writer.writeString(offsets[3], object.flashcardId);
  writer.writeLongList(offsets[4], object.grades);
  writer.writeBool(offsets[5], object.isGenerateQuizSupported);
  writer.writeBool(offsets[6], object.isHaveQuiz);
  writer.writeObject<BookReactionLocalModel>(
    offsets[7],
    allOffsets,
    BookReactionLocalModelSchema.serialize,
    object.reactions,
  );
  writer.writeLong(offsets[8], object.reads);
  writer.writeStringList(offsets[9], object.rewards);
  writer.writeString(offsets[10], object.summary);
  writer.writeString(offsets[11], object.title);
  writer.writeLong(offsets[12], object.totalCards);
  writer.writeLong(offsets[13], object.totalQuiz);
  writer.writeDateTime(offsets[14], object.updatedAt);
}

FlashcardLocalModel _flashcardLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FlashcardLocalModel(
    cards: reader.readObjectList<FlashcardCardLocalModel>(
      offsets[0],
      FlashcardCardLocalModelSchema.deserialize,
      allOffsets,
      FlashcardCardLocalModel(),
    ),
    category: reader.readStringOrNull(offsets[1]),
    createdAt: reader.readDateTimeOrNull(offsets[2]),
    flashcardId: reader.readStringOrNull(offsets[3]),
    grades: reader.readLongList(offsets[4]),
    isGenerateQuizSupported: reader.readBoolOrNull(offsets[5]),
    isHaveQuiz: reader.readBoolOrNull(offsets[6]),
    reactions: reader.readObjectOrNull<BookReactionLocalModel>(
      offsets[7],
      BookReactionLocalModelSchema.deserialize,
      allOffsets,
    ),
    reads: reader.readLongOrNull(offsets[8]),
    rewards: reader.readStringList(offsets[9]),
    summary: reader.readStringOrNull(offsets[10]),
    title: reader.readStringOrNull(offsets[11]),
    totalCards: reader.readLongOrNull(offsets[12]),
    totalQuiz: reader.readLongOrNull(offsets[13]),
    updatedAt: reader.readDateTimeOrNull(offsets[14]),
  );
  object.id = id;
  return object;
}

P _flashcardLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<FlashcardCardLocalModel>(
        offset,
        FlashcardCardLocalModelSchema.deserialize,
        allOffsets,
        FlashcardCardLocalModel(),
      )) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongList(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readObjectOrNull<BookReactionLocalModel>(
        offset,
        BookReactionLocalModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readStringList(offset)) as P;
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

Id _flashcardLocalModelGetId(FlashcardLocalModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _flashcardLocalModelGetLinks(
    FlashcardLocalModel object) {
  return [];
}

void _flashcardLocalModelAttach(
    IsarCollection<dynamic> col, Id id, FlashcardLocalModel object) {
  object.id = id;
}

extension FlashcardLocalModelQueryWhereSort
    on QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QWhere> {
  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FlashcardLocalModelQueryWhere
    on QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QWhereClause> {
  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterWhereClause>
      idBetween(
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

extension FlashcardLocalModelQueryFilter on QueryBuilder<FlashcardLocalModel,
    FlashcardLocalModel, QFilterCondition> {
  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      cardsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'cards',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      cardsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'cards',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      cardsLengthEqualTo(int length) {
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      cardsIsEmpty() {
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      cardsIsNotEmpty() {
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      cardsLengthLessThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      cardsLengthGreaterThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      cardsLengthBetween(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      categoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      categoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      categoryEqualTo(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      categoryGreaterThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      categoryLessThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      categoryBetween(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      categoryStartsWith(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      categoryEndsWith(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      categoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      categoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      createdAtGreaterThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      createdAtLessThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      createdAtBetween(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      flashcardIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flashcardId',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      flashcardIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flashcardId',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      flashcardIdEqualTo(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      flashcardIdGreaterThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      flashcardIdLessThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      flashcardIdBetween(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      flashcardIdStartsWith(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      flashcardIdEndsWith(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      flashcardIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'flashcardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      flashcardIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'flashcardId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      flashcardIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flashcardId',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      flashcardIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'flashcardId',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      gradesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'grades',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      gradesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'grades',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      gradesElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'grades',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      gradesElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'grades',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      gradesElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'grades',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      gradesElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'grades',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      gradesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'grades',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      gradesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'grades',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      gradesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'grades',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      gradesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'grades',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      gradesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'grades',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      gradesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'grades',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      isGenerateQuizSupportedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isGenerateQuizSupported',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      isGenerateQuizSupportedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isGenerateQuizSupported',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      isGenerateQuizSupportedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isGenerateQuizSupported',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      isHaveQuizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isHaveQuiz',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      isHaveQuizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isHaveQuiz',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      isHaveQuizEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isHaveQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      reactionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reactions',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      reactionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reactions',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      readsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reads',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      readsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reads',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      readsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reads',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      readsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reads',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      readsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reads',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      readsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reads',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rewards',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rewards',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rewards',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'rewards',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'rewards',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'rewards',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'rewards',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'rewards',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rewards',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rewards',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rewards',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rewards',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rewards',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rewards',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rewards',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rewards',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rewards',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      rewardsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rewards',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      summaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'summary',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      summaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'summary',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      summaryEqualTo(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      summaryGreaterThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      summaryLessThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      summaryBetween(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      summaryStartsWith(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      summaryEndsWith(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      summaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'summary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      summaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'summary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      summaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'summary',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      summaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'summary',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      titleEqualTo(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      titleGreaterThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      titleLessThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      titleBetween(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      titleStartsWith(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      titleEndsWith(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      totalCardsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalCards',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      totalCardsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalCards',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      totalCardsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalCards',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      totalCardsGreaterThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      totalCardsLessThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      totalCardsBetween(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      totalQuizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalQuiz',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      totalQuizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalQuiz',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      totalQuizEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      totalQuizGreaterThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      totalQuizLessThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      totalQuizBetween(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      updatedAtGreaterThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      updatedAtLessThan(
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

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      updatedAtBetween(
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

extension FlashcardLocalModelQueryObject on QueryBuilder<FlashcardLocalModel,
    FlashcardLocalModel, QFilterCondition> {
  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      cardsElement(FilterQuery<FlashcardCardLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'cards');
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterFilterCondition>
      reactions(FilterQuery<BookReactionLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'reactions');
    });
  }
}

extension FlashcardLocalModelQueryLinks on QueryBuilder<FlashcardLocalModel,
    FlashcardLocalModel, QFilterCondition> {}

extension FlashcardLocalModelQuerySortBy
    on QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QSortBy> {
  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByFlashcardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flashcardId', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByFlashcardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flashcardId', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByIsGenerateQuizSupported() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGenerateQuizSupported', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByIsGenerateQuizSupportedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGenerateQuizSupported', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByIsHaveQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByIsHaveQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByReads() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reads', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByReadsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reads', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortBySummary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortBySummaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByTotalCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByTotalCardsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByTotalQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuiz', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByTotalQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuiz', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension FlashcardLocalModelQuerySortThenBy
    on QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QSortThenBy> {
  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByFlashcardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flashcardId', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByFlashcardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flashcardId', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByIsGenerateQuizSupported() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGenerateQuizSupported', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByIsGenerateQuizSupportedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGenerateQuizSupported', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByIsHaveQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByIsHaveQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByReads() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reads', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByReadsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reads', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenBySummary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenBySummaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByTotalCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByTotalCardsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByTotalQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuiz', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByTotalQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuiz', Sort.desc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension FlashcardLocalModelQueryWhereDistinct
    on QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QDistinct> {
  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QDistinct>
      distinctByCategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QDistinct>
      distinctByFlashcardId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flashcardId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QDistinct>
      distinctByGrades() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'grades');
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QDistinct>
      distinctByIsGenerateQuizSupported() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isGenerateQuizSupported');
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QDistinct>
      distinctByIsHaveQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isHaveQuiz');
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QDistinct>
      distinctByReads() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reads');
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QDistinct>
      distinctByRewards() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rewards');
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QDistinct>
      distinctBySummary({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'summary', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QDistinct>
      distinctByTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QDistinct>
      distinctByTotalCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalCards');
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QDistinct>
      distinctByTotalQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalQuiz');
    });
  }

  QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension FlashcardLocalModelQueryProperty
    on QueryBuilder<FlashcardLocalModel, FlashcardLocalModel, QQueryProperty> {
  QueryBuilder<FlashcardLocalModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FlashcardLocalModel, List<FlashcardCardLocalModel>?,
      QQueryOperations> cardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cards');
    });
  }

  QueryBuilder<FlashcardLocalModel, String?, QQueryOperations>
      categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<FlashcardLocalModel, DateTime?, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<FlashcardLocalModel, String?, QQueryOperations>
      flashcardIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flashcardId');
    });
  }

  QueryBuilder<FlashcardLocalModel, List<int>?, QQueryOperations>
      gradesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'grades');
    });
  }

  QueryBuilder<FlashcardLocalModel, bool?, QQueryOperations>
      isGenerateQuizSupportedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isGenerateQuizSupported');
    });
  }

  QueryBuilder<FlashcardLocalModel, bool?, QQueryOperations>
      isHaveQuizProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isHaveQuiz');
    });
  }

  QueryBuilder<FlashcardLocalModel, BookReactionLocalModel?, QQueryOperations>
      reactionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reactions');
    });
  }

  QueryBuilder<FlashcardLocalModel, int?, QQueryOperations> readsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reads');
    });
  }

  QueryBuilder<FlashcardLocalModel, List<String>?, QQueryOperations>
      rewardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rewards');
    });
  }

  QueryBuilder<FlashcardLocalModel, String?, QQueryOperations>
      summaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'summary');
    });
  }

  QueryBuilder<FlashcardLocalModel, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<FlashcardLocalModel, int?, QQueryOperations>
      totalCardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalCards');
    });
  }

  QueryBuilder<FlashcardLocalModel, int?, QQueryOperations>
      totalQuizProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalQuiz');
    });
  }

  QueryBuilder<FlashcardLocalModel, DateTime?, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}

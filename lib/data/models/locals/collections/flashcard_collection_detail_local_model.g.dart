// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_collection_detail_local_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFlashCardCollectionDetailLocalModelCollection on Isar {
  IsarCollection<FlashCardCollectionDetailLocalModel>
      get flashCardCollectionDetailLocalModels => this.collection();
}

const FlashCardCollectionDetailLocalModelSchema = CollectionSchema(
  name: r'FlashCardCollectionDetailLocalModel',
  id: -1529839961612514789,
  properties: {
    r'bgColor': PropertySchema(
      id: 0,
      name: r'bgColor',
      type: IsarType.long,
    ),
    r'categories': PropertySchema(
      id: 1,
      name: r'categories',
      type: IsarType.stringList,
    ),
    r'completedQuiz': PropertySchema(
      id: 2,
      name: r'completedQuiz',
      type: IsarType.long,
    ),
    r'createdAt': PropertySchema(
      id: 3,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'desc': PropertySchema(
      id: 4,
      name: r'desc',
      type: IsarType.string,
    ),
    r'flashcardId': PropertySchema(
      id: 5,
      name: r'flashcardId',
      type: IsarType.string,
    ),
    r'flashcards': PropertySchema(
      id: 6,
      name: r'flashcards',
      type: IsarType.objectList,
      target: r'FlashCardCollectionDetailItemLocalModel',
    ),
    r'title': PropertySchema(
      id: 7,
      name: r'title',
      type: IsarType.string,
    ),
    r'totalCards': PropertySchema(
      id: 8,
      name: r'totalCards',
      type: IsarType.long,
    ),
    r'totalFlashcard': PropertySchema(
      id: 9,
      name: r'totalFlashcard',
      type: IsarType.long,
    ),
    r'totalQuiz': PropertySchema(
      id: 10,
      name: r'totalQuiz',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 11,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _flashCardCollectionDetailLocalModelEstimateSize,
  serialize: _flashCardCollectionDetailLocalModelSerialize,
  deserialize: _flashCardCollectionDetailLocalModelDeserialize,
  deserializeProp: _flashCardCollectionDetailLocalModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'FlashCardCollectionDetailItemLocalModel':
        FlashCardCollectionDetailItemLocalModelSchema
  },
  getId: _flashCardCollectionDetailLocalModelGetId,
  getLinks: _flashCardCollectionDetailLocalModelGetLinks,
  attach: _flashCardCollectionDetailLocalModelAttach,
  version: '3.3.0',
);

int _flashCardCollectionDetailLocalModelEstimateSize(
  FlashCardCollectionDetailLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.categories;
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
    final value = object.desc;
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
    final list = object.flashcards;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[FlashCardCollectionDetailItemLocalModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              FlashCardCollectionDetailItemLocalModelSchema.estimateSize(
                  value, offsets, allOffsets);
        }
      }
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

void _flashCardCollectionDetailLocalModelSerialize(
  FlashCardCollectionDetailLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.bgColor);
  writer.writeStringList(offsets[1], object.categories);
  writer.writeLong(offsets[2], object.completedQuiz);
  writer.writeDateTime(offsets[3], object.createdAt);
  writer.writeString(offsets[4], object.desc);
  writer.writeString(offsets[5], object.flashcardId);
  writer.writeObjectList<FlashCardCollectionDetailItemLocalModel>(
    offsets[6],
    allOffsets,
    FlashCardCollectionDetailItemLocalModelSchema.serialize,
    object.flashcards,
  );
  writer.writeString(offsets[7], object.title);
  writer.writeLong(offsets[8], object.totalCards);
  writer.writeLong(offsets[9], object.totalFlashcard);
  writer.writeLong(offsets[10], object.totalQuiz);
  writer.writeDateTime(offsets[11], object.updatedAt);
}

FlashCardCollectionDetailLocalModel
    _flashCardCollectionDetailLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FlashCardCollectionDetailLocalModel(
    bgColor: reader.readLongOrNull(offsets[0]),
    categories: reader.readStringList(offsets[1]),
    completedQuiz: reader.readLongOrNull(offsets[2]),
    createdAt: reader.readDateTimeOrNull(offsets[3]),
    desc: reader.readStringOrNull(offsets[4]),
    flashcardId: reader.readStringOrNull(offsets[5]),
    flashcards: reader.readObjectList<FlashCardCollectionDetailItemLocalModel>(
      offsets[6],
      FlashCardCollectionDetailItemLocalModelSchema.deserialize,
      allOffsets,
      FlashCardCollectionDetailItemLocalModel(),
    ),
    title: reader.readStringOrNull(offsets[7]),
    totalCards: reader.readLongOrNull(offsets[8]),
    totalFlashcard: reader.readLongOrNull(offsets[9]),
    totalQuiz: reader.readLongOrNull(offsets[10]),
    updatedAt: reader.readDateTimeOrNull(offsets[11]),
  );
  object.id = id;
  return object;
}

P _flashCardCollectionDetailLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringList(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readObjectList<FlashCardCollectionDetailItemLocalModel>(
        offset,
        FlashCardCollectionDetailItemLocalModelSchema.deserialize,
        allOffsets,
        FlashCardCollectionDetailItemLocalModel(),
      )) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _flashCardCollectionDetailLocalModelGetId(
    FlashCardCollectionDetailLocalModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _flashCardCollectionDetailLocalModelGetLinks(
    FlashCardCollectionDetailLocalModel object) {
  return [];
}

void _flashCardCollectionDetailLocalModelAttach(IsarCollection<dynamic> col,
    Id id, FlashCardCollectionDetailLocalModel object) {
  object.id = id;
}

extension FlashCardCollectionDetailLocalModelQueryWhereSort on QueryBuilder<
    FlashCardCollectionDetailLocalModel,
    FlashCardCollectionDetailLocalModel,
    QWhere> {
  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FlashCardCollectionDetailLocalModelQueryWhere on QueryBuilder<
    FlashCardCollectionDetailLocalModel,
    FlashCardCollectionDetailLocalModel,
    QWhereClause> {
  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterWhereClause> idBetween(
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

extension FlashCardCollectionDetailLocalModelQueryFilter on QueryBuilder<
    FlashCardCollectionDetailLocalModel,
    FlashCardCollectionDetailLocalModel,
    QFilterCondition> {
  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> bgColorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bgColor',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> bgColorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bgColor',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> bgColorEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bgColor',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> bgColorGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bgColor',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> bgColorLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bgColor',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> bgColorBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bgColor',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categories',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categories',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'categories',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
          FlashCardCollectionDetailLocalModel, QAfterFilterCondition>
      categoriesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
          FlashCardCollectionDetailLocalModel, QAfterFilterCondition>
      categoriesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categories',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categories',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categories',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> categoriesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'categories',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> completedQuizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'completedQuiz',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> completedQuizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'completedQuiz',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> completedQuizEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterFilterCondition> descIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'desc',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> descIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'desc',
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterFilterCondition> descEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> descGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterFilterCondition> descLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterFilterCondition> descBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'desc',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> descStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterFilterCondition> descEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
          FlashCardCollectionDetailLocalModel, QAfterFilterCondition>
      descContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
          FlashCardCollectionDetailLocalModel, QAfterFilterCondition>
      descMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'desc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> descIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'desc',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> descIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'desc',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> flashcardIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flashcardId',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> flashcardIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flashcardId',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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

  QueryBuilder<FlashCardCollectionDetailLocalModel,
          FlashCardCollectionDetailLocalModel, QAfterFilterCondition>
      flashcardIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'flashcardId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
          FlashCardCollectionDetailLocalModel, QAfterFilterCondition>
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> flashcardIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'flashcardId',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> flashcardIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'flashcardId',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> flashcardsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flashcards',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> flashcardsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flashcards',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> flashcardsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flashcards',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> flashcardsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flashcards',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> flashcardsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flashcards',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> flashcardsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flashcards',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> flashcardsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flashcards',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> flashcardsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flashcards',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterFilterCondition> titleEqualTo(
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterFilterCondition> titleLessThan(
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

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterFilterCondition> titleBetween(
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterFilterCondition> titleEndsWith(
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

  QueryBuilder<FlashCardCollectionDetailLocalModel,
          FlashCardCollectionDetailLocalModel, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
          FlashCardCollectionDetailLocalModel, QAfterFilterCondition>
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> totalCardsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalCards',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> totalCardsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalCards',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> totalCardsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalCards',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> totalFlashcardIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalFlashcard',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> totalFlashcardIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalFlashcard',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> totalFlashcardEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalFlashcard',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> totalFlashcardGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalFlashcard',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> totalFlashcardLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalFlashcard',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> totalFlashcardBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalFlashcard',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> totalQuizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalQuiz',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> totalQuizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalQuiz',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> totalQuizEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterFilterCondition> updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
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

extension FlashCardCollectionDetailLocalModelQueryObject on QueryBuilder<
    FlashCardCollectionDetailLocalModel,
    FlashCardCollectionDetailLocalModel,
    QFilterCondition> {
  QueryBuilder<FlashCardCollectionDetailLocalModel,
          FlashCardCollectionDetailLocalModel, QAfterFilterCondition>
      flashcardsElement(
          FilterQuery<FlashCardCollectionDetailItemLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'flashcards');
    });
  }
}

extension FlashCardCollectionDetailLocalModelQueryLinks on QueryBuilder<
    FlashCardCollectionDetailLocalModel,
    FlashCardCollectionDetailLocalModel,
    QFilterCondition> {}

extension FlashCardCollectionDetailLocalModelQuerySortBy on QueryBuilder<
    FlashCardCollectionDetailLocalModel,
    FlashCardCollectionDetailLocalModel,
    QSortBy> {
  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByBgColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bgColor', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByBgColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bgColor', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByCompletedQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedQuiz', Sort.asc);
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterSortBy> sortByCompletedQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedQuiz', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desc', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desc', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByFlashcardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flashcardId', Sort.asc);
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterSortBy> sortByFlashcardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flashcardId', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByTotalCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.asc);
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterSortBy> sortByTotalCardsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.desc);
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterSortBy> sortByTotalFlashcard() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalFlashcard', Sort.asc);
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterSortBy> sortByTotalFlashcardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalFlashcard', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByTotalQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuiz', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByTotalQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuiz', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension FlashCardCollectionDetailLocalModelQuerySortThenBy on QueryBuilder<
    FlashCardCollectionDetailLocalModel,
    FlashCardCollectionDetailLocalModel,
    QSortThenBy> {
  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByBgColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bgColor', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByBgColorDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bgColor', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByCompletedQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedQuiz', Sort.asc);
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterSortBy> thenByCompletedQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'completedQuiz', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desc', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByDescDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'desc', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByFlashcardId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flashcardId', Sort.asc);
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterSortBy> thenByFlashcardIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'flashcardId', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByTotalCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.asc);
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterSortBy> thenByTotalCardsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalCards', Sort.desc);
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterSortBy> thenByTotalFlashcard() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalFlashcard', Sort.asc);
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QAfterSortBy> thenByTotalFlashcardDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalFlashcard', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByTotalQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuiz', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByTotalQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuiz', Sort.desc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension FlashCardCollectionDetailLocalModelQueryWhereDistinct on QueryBuilder<
    FlashCardCollectionDetailLocalModel,
    FlashCardCollectionDetailLocalModel,
    QDistinct> {
  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QDistinct> distinctByBgColor() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bgColor');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QDistinct> distinctByCategories() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'categories');
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QDistinct> distinctByCompletedQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedQuiz');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QDistinct> distinctByDesc({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'desc', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QDistinct> distinctByFlashcardId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'flashcardId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QDistinct> distinctByTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QDistinct> distinctByTotalCards() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalCards');
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel,
      QDistinct> distinctByTotalFlashcard() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalFlashcard');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QDistinct> distinctByTotalQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalQuiz');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel,
      FlashCardCollectionDetailLocalModel, QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension FlashCardCollectionDetailLocalModelQueryProperty on QueryBuilder<
    FlashCardCollectionDetailLocalModel,
    FlashCardCollectionDetailLocalModel,
    QQueryProperty> {
  QueryBuilder<FlashCardCollectionDetailLocalModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel, int?, QQueryOperations>
      bgColorProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bgColor');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel, List<String>?,
      QQueryOperations> categoriesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'categories');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel, int?, QQueryOperations>
      completedQuizProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedQuiz');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel, DateTime?, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel, String?, QQueryOperations>
      descProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'desc');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel, String?, QQueryOperations>
      flashcardIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flashcardId');
    });
  }

  QueryBuilder<
      FlashCardCollectionDetailLocalModel,
      List<FlashCardCollectionDetailItemLocalModel>?,
      QQueryOperations> flashcardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flashcards');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel, String?, QQueryOperations>
      titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel, int?, QQueryOperations>
      totalCardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalCards');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel, int?, QQueryOperations>
      totalFlashcardProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalFlashcard');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel, int?, QQueryOperations>
      totalQuizProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalQuiz');
    });
  }

  QueryBuilder<FlashCardCollectionDetailLocalModel, DateTime?, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'children_reaction_local_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetChildrenReactionLocalModelCollection on Isar {
  IsarCollection<ChildrenReactionLocalModel> get childrenReactionLocalModels =>
      this.collection();
}

const ChildrenReactionLocalModelSchema = CollectionSchema(
  name: r'ChildrenReactionLocalModel',
  id: 5524631670970056438,
  properties: {
    r'bookId': PropertySchema(
      id: 0,
      name: r'bookId',
      type: IsarType.string,
    ),
    r'clappingHand': PropertySchema(
      id: 1,
      name: r'clappingHand',
      type: IsarType.bool,
    ),
    r'heart': PropertySchema(
      id: 2,
      name: r'heart',
      type: IsarType.bool,
    ),
    r'laughing': PropertySchema(
      id: 3,
      name: r'laughing',
      type: IsarType.bool,
    ),
    r'lightBulb': PropertySchema(
      id: 4,
      name: r'lightBulb',
      type: IsarType.bool,
    ),
    r'updatedAt': PropertySchema(
      id: 5,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _childrenReactionLocalModelEstimateSize,
  serialize: _childrenReactionLocalModelSerialize,
  deserialize: _childrenReactionLocalModelDeserialize,
  deserializeProp: _childrenReactionLocalModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _childrenReactionLocalModelGetId,
  getLinks: _childrenReactionLocalModelGetLinks,
  attach: _childrenReactionLocalModelAttach,
  version: '3.3.0',
);

int _childrenReactionLocalModelEstimateSize(
  ChildrenReactionLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.bookId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _childrenReactionLocalModelSerialize(
  ChildrenReactionLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.bookId);
  writer.writeBool(offsets[1], object.clappingHand);
  writer.writeBool(offsets[2], object.heart);
  writer.writeBool(offsets[3], object.laughing);
  writer.writeBool(offsets[4], object.lightBulb);
  writer.writeDateTime(offsets[5], object.updatedAt);
}

ChildrenReactionLocalModel _childrenReactionLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ChildrenReactionLocalModel(
    bookId: reader.readStringOrNull(offsets[0]),
    clappingHand: reader.readBoolOrNull(offsets[1]),
    heart: reader.readBoolOrNull(offsets[2]),
    laughing: reader.readBoolOrNull(offsets[3]),
    lightBulb: reader.readBoolOrNull(offsets[4]),
    updatedAt: reader.readDateTimeOrNull(offsets[5]),
  );
  object.id = id;
  return object;
}

P _childrenReactionLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset)) as P;
    case 3:
      return (reader.readBoolOrNull(offset)) as P;
    case 4:
      return (reader.readBoolOrNull(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _childrenReactionLocalModelGetId(ChildrenReactionLocalModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _childrenReactionLocalModelGetLinks(
    ChildrenReactionLocalModel object) {
  return [];
}

void _childrenReactionLocalModelAttach(
    IsarCollection<dynamic> col, Id id, ChildrenReactionLocalModel object) {
  object.id = id;
}

extension ChildrenReactionLocalModelQueryWhereSort on QueryBuilder<
    ChildrenReactionLocalModel, ChildrenReactionLocalModel, QWhere> {
  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ChildrenReactionLocalModelQueryWhere on QueryBuilder<
    ChildrenReactionLocalModel, ChildrenReactionLocalModel, QWhereClause> {
  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
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

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
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

extension ChildrenReactionLocalModelQueryFilter on QueryBuilder<
    ChildrenReactionLocalModel, ChildrenReactionLocalModel, QFilterCondition> {
  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> bookIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bookId',
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> bookIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bookId',
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> bookIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> bookIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bookId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> bookIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bookId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> bookIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bookId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> bookIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bookId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> bookIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bookId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
          QAfterFilterCondition>
      bookIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bookId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
          QAfterFilterCondition>
      bookIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bookId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> bookIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookId',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> bookIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bookId',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> clappingHandIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clappingHand',
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> clappingHandIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clappingHand',
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> clappingHandEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clappingHand',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> heartIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'heart',
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> heartIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'heart',
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> heartEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'heart',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
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

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
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

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
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

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> laughingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'laughing',
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> laughingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'laughing',
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> laughingEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'laughing',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> lightBulbIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lightBulb',
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> lightBulbIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lightBulb',
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> lightBulbEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lightBulb',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterFilterCondition> updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
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

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
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

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
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

extension ChildrenReactionLocalModelQueryObject on QueryBuilder<
    ChildrenReactionLocalModel, ChildrenReactionLocalModel, QFilterCondition> {}

extension ChildrenReactionLocalModelQueryLinks on QueryBuilder<
    ChildrenReactionLocalModel, ChildrenReactionLocalModel, QFilterCondition> {}

extension ChildrenReactionLocalModelQuerySortBy on QueryBuilder<
    ChildrenReactionLocalModel, ChildrenReactionLocalModel, QSortBy> {
  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> sortByBookId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookId', Sort.asc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> sortByBookIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookId', Sort.desc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> sortByClappingHand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clappingHand', Sort.asc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> sortByClappingHandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clappingHand', Sort.desc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> sortByHeart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heart', Sort.asc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> sortByHeartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heart', Sort.desc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> sortByLaughing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'laughing', Sort.asc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> sortByLaughingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'laughing', Sort.desc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> sortByLightBulb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lightBulb', Sort.asc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> sortByLightBulbDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lightBulb', Sort.desc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension ChildrenReactionLocalModelQuerySortThenBy on QueryBuilder<
    ChildrenReactionLocalModel, ChildrenReactionLocalModel, QSortThenBy> {
  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> thenByBookId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookId', Sort.asc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> thenByBookIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookId', Sort.desc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> thenByClappingHand() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clappingHand', Sort.asc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> thenByClappingHandDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'clappingHand', Sort.desc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> thenByHeart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heart', Sort.asc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> thenByHeartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heart', Sort.desc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> thenByLaughing() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'laughing', Sort.asc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> thenByLaughingDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'laughing', Sort.desc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> thenByLightBulb() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lightBulb', Sort.asc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> thenByLightBulbDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lightBulb', Sort.desc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QAfterSortBy> thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension ChildrenReactionLocalModelQueryWhereDistinct on QueryBuilder<
    ChildrenReactionLocalModel, ChildrenReactionLocalModel, QDistinct> {
  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QDistinct> distinctByBookId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bookId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QDistinct> distinctByClappingHand() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'clappingHand');
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QDistinct> distinctByHeart() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'heart');
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QDistinct> distinctByLaughing() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'laughing');
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QDistinct> distinctByLightBulb() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lightBulb');
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, ChildrenReactionLocalModel,
      QDistinct> distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension ChildrenReactionLocalModelQueryProperty on QueryBuilder<
    ChildrenReactionLocalModel, ChildrenReactionLocalModel, QQueryProperty> {
  QueryBuilder<ChildrenReactionLocalModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, String?, QQueryOperations>
      bookIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bookId');
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, bool?, QQueryOperations>
      clappingHandProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'clappingHand');
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, bool?, QQueryOperations>
      heartProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'heart');
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, bool?, QQueryOperations>
      laughingProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'laughing');
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, bool?, QQueryOperations>
      lightBulbProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lightBulb');
    });
  }

  QueryBuilder<ChildrenReactionLocalModel, DateTime?, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}

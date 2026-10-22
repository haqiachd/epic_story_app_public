// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'children_collection_local_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const ChildrenCollectionLocalModelSchema = Schema(
  name: r'ChildrenCollectionLocalModel',
  id: -3900158272068582993,
  properties: {
    r'bgColor': PropertySchema(
      id: 0,
      name: r'bgColor',
      type: IsarType.long,
    ),
    r'bookCovers': PropertySchema(
      id: 1,
      name: r'bookCovers',
      type: IsarType.stringList,
    ),
    r'categories': PropertySchema(
      id: 2,
      name: r'categories',
      type: IsarType.stringList,
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
    r'id': PropertySchema(
      id: 5,
      name: r'id',
      type: IsarType.string,
    ),
    r'nBooks': PropertySchema(
      id: 6,
      name: r'nBooks',
      type: IsarType.long,
    ),
    r'nPages': PropertySchema(
      id: 7,
      name: r'nPages',
      type: IsarType.long,
    ),
    r'title': PropertySchema(
      id: 8,
      name: r'title',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 9,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _childrenCollectionLocalModelEstimateSize,
  serialize: _childrenCollectionLocalModelSerialize,
  deserialize: _childrenCollectionLocalModelDeserialize,
  deserializeProp: _childrenCollectionLocalModelDeserializeProp,
);

int _childrenCollectionLocalModelEstimateSize(
  ChildrenCollectionLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.bookCovers;
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
    final value = object.id;
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

void _childrenCollectionLocalModelSerialize(
  ChildrenCollectionLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.bgColor);
  writer.writeStringList(offsets[1], object.bookCovers);
  writer.writeStringList(offsets[2], object.categories);
  writer.writeDateTime(offsets[3], object.createdAt);
  writer.writeString(offsets[4], object.desc);
  writer.writeString(offsets[5], object.id);
  writer.writeLong(offsets[6], object.nBooks);
  writer.writeLong(offsets[7], object.nPages);
  writer.writeString(offsets[8], object.title);
  writer.writeDateTime(offsets[9], object.updatedAt);
}

ChildrenCollectionLocalModel _childrenCollectionLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ChildrenCollectionLocalModel(
    bgColor: reader.readLongOrNull(offsets[0]),
    bookCovers: reader.readStringList(offsets[1]),
    categories: reader.readStringList(offsets[2]),
    createdAt: reader.readDateTimeOrNull(offsets[3]),
    desc: reader.readStringOrNull(offsets[4]),
    id: reader.readStringOrNull(offsets[5]),
    nBooks: reader.readLongOrNull(offsets[6]),
    nPages: reader.readLongOrNull(offsets[7]),
    title: reader.readStringOrNull(offsets[8]),
    updatedAt: reader.readDateTimeOrNull(offsets[9]),
  );
  return object;
}

P _childrenCollectionLocalModelDeserializeProp<P>(
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
      return (reader.readStringList(offset)) as P;
    case 3:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readLongOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension ChildrenCollectionLocalModelQueryFilter on QueryBuilder<
    ChildrenCollectionLocalModel,
    ChildrenCollectionLocalModel,
    QFilterCondition> {
  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bgColorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bgColor',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bgColorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bgColor',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bgColorEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bgColor',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bookCovers',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bookCovers',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookCovers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bookCovers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bookCovers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bookCovers',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bookCovers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bookCovers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
          QAfterFilterCondition>
      bookCoversElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bookCovers',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
          QAfterFilterCondition>
      bookCoversElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bookCovers',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookCovers',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bookCovers',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bookCovers',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bookCovers',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bookCovers',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bookCovers',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bookCovers',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> bookCoversLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'bookCovers',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> categoriesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categories',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> categoriesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categories',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
          QAfterFilterCondition>
      categoriesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'categories',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
          QAfterFilterCondition>
      categoriesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'categories',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> categoriesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categories',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> categoriesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categories',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> descIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'desc',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> descIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'desc',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> descEqualTo(
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> descLessThan(
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> descBetween(
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> descEndsWith(
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
          QAfterFilterCondition>
      descContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'desc',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
          QAfterFilterCondition>
      descMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'desc',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> descIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'desc',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> descIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'desc',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> nBooksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nBooks',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> nBooksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nBooks',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> nBooksEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nBooks',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> nBooksGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nBooks',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> nBooksLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nBooks',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> nBooksBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nBooks',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> nPagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nPages',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> nPagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nPages',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> nPagesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nPages',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> nPagesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nPages',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> nPagesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nPages',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> nPagesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nPages',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
      QAfterFilterCondition> updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

  QueryBuilder<ChildrenCollectionLocalModel, ChildrenCollectionLocalModel,
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

extension ChildrenCollectionLocalModelQueryObject on QueryBuilder<
    ChildrenCollectionLocalModel,
    ChildrenCollectionLocalModel,
    QFilterCondition> {}

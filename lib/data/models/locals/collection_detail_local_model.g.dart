// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_detail_local_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const CollectionDetailLocalModelSchema = Schema(
  name: r'CollectionDetailLocalModel',
  id: 816013203647201841,
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
    r'books': PropertySchema(
      id: 2,
      name: r'books',
      type: IsarType.objectList,
      target: r'CollectionBookLocalModel',
    ),
    r'categories': PropertySchema(
      id: 3,
      name: r'categories',
      type: IsarType.stringList,
    ),
    r'createdAt': PropertySchema(
      id: 4,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'desc': PropertySchema(
      id: 5,
      name: r'desc',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 6,
      name: r'id',
      type: IsarType.string,
    ),
    r'nBooks': PropertySchema(
      id: 7,
      name: r'nBooks',
      type: IsarType.long,
    ),
    r'nPages': PropertySchema(
      id: 8,
      name: r'nPages',
      type: IsarType.long,
    ),
    r'title': PropertySchema(
      id: 9,
      name: r'title',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 10,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _collectionDetailLocalModelEstimateSize,
  serialize: _collectionDetailLocalModelSerialize,
  deserialize: _collectionDetailLocalModelDeserialize,
  deserializeProp: _collectionDetailLocalModelDeserializeProp,
);

int _collectionDetailLocalModelEstimateSize(
  CollectionDetailLocalModel object,
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
    final list = object.books;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[CollectionBookLocalModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += CollectionBookLocalModelSchema.estimateSize(
              value, offsets, allOffsets);
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

void _collectionDetailLocalModelSerialize(
  CollectionDetailLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.bgColor);
  writer.writeStringList(offsets[1], object.bookCovers);
  writer.writeObjectList<CollectionBookLocalModel>(
    offsets[2],
    allOffsets,
    CollectionBookLocalModelSchema.serialize,
    object.books,
  );
  writer.writeStringList(offsets[3], object.categories);
  writer.writeDateTime(offsets[4], object.createdAt);
  writer.writeString(offsets[5], object.desc);
  writer.writeString(offsets[6], object.id);
  writer.writeLong(offsets[7], object.nBooks);
  writer.writeLong(offsets[8], object.nPages);
  writer.writeString(offsets[9], object.title);
  writer.writeDateTime(offsets[10], object.updatedAt);
}

CollectionDetailLocalModel _collectionDetailLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CollectionDetailLocalModel(
    bgColor: reader.readLongOrNull(offsets[0]),
    bookCovers: reader.readStringList(offsets[1]),
    books: reader.readObjectList<CollectionBookLocalModel>(
      offsets[2],
      CollectionBookLocalModelSchema.deserialize,
      allOffsets,
      CollectionBookLocalModel(),
    ),
    categories: reader.readStringList(offsets[3]),
    createdAt: reader.readDateTimeOrNull(offsets[4]),
    desc: reader.readStringOrNull(offsets[5]),
    id: reader.readStringOrNull(offsets[6]),
    nBooks: reader.readLongOrNull(offsets[7]),
    nPages: reader.readLongOrNull(offsets[8]),
    title: reader.readStringOrNull(offsets[9]),
    updatedAt: reader.readDateTimeOrNull(offsets[10]),
  );
  return object;
}

P _collectionDetailLocalModelDeserializeProp<P>(
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
      return (reader.readObjectList<CollectionBookLocalModel>(
        offset,
        CollectionBookLocalModelSchema.deserialize,
        allOffsets,
        CollectionBookLocalModel(),
      )) as P;
    case 3:
      return (reader.readStringList(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension CollectionDetailLocalModelQueryFilter on QueryBuilder<
    CollectionDetailLocalModel, CollectionDetailLocalModel, QFilterCondition> {
  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> bgColorIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bgColor',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> bgColorIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bgColor',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> bgColorEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bgColor',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> bookCoversIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bookCovers',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> bookCoversIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bookCovers',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> bookCoversElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookCovers',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> bookCoversElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bookCovers',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> booksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'books',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> booksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'books',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> booksLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'books',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> booksIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'books',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> booksIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'books',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> booksLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'books',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> booksLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'books',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> booksLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'books',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> categoriesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'categories',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> categoriesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'categories',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> categoriesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'categories',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> categoriesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'categories',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> descIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'desc',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> descIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'desc',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> descIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'desc',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> descIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'desc',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> nBooksIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nBooks',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> nBooksIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nBooks',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> nBooksEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nBooks',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> nPagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nPages',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> nPagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nPages',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> nPagesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nPages',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
      QAfterFilterCondition> updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
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

extension CollectionDetailLocalModelQueryObject on QueryBuilder<
    CollectionDetailLocalModel, CollectionDetailLocalModel, QFilterCondition> {
  QueryBuilder<CollectionDetailLocalModel, CollectionDetailLocalModel,
          QAfterFilterCondition>
      booksElement(FilterQuery<CollectionBookLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'books');
    });
  }
}

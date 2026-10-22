// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_local_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBookLocalModelCollection on Isar {
  IsarCollection<BookLocalModel> get bookLocalModels => this.collection();
}

const BookLocalModelSchema = CollectionSchema(
  name: r'BookLocalModel',
  id: 650570065089504654,
  properties: {
    r'bookAsset': PropertySchema(
      id: 0,
      name: r'bookAsset',
      type: IsarType.string,
    ),
    r'bookCover': PropertySchema(
      id: 1,
      name: r'bookCover',
      type: IsarType.string,
    ),
    r'bookId': PropertySchema(
      id: 2,
      name: r'bookId',
      type: IsarType.string,
    ),
    r'category': PropertySchema(
      id: 3,
      name: r'category',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 4,
      name: r'createdAt',
      type: IsarType.dateTime,
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
    r'pages': PropertySchema(
      id: 7,
      name: r'pages',
      type: IsarType.objectList,
      target: r'BookPageLocalModel',
    ),
    r'quizType': PropertySchema(
      id: 8,
      name: r'quizType',
      type: IsarType.long,
    ),
    r'reactions': PropertySchema(
      id: 9,
      name: r'reactions',
      type: IsarType.object,
      target: r'BookReactionLocalModel',
    ),
    r'reads': PropertySchema(
      id: 10,
      name: r'reads',
      type: IsarType.long,
    ),
    r'rewards': PropertySchema(
      id: 11,
      name: r'rewards',
      type: IsarType.stringList,
    ),
    r'sizeInBytes': PropertySchema(
      id: 12,
      name: r'sizeInBytes',
      type: IsarType.long,
    ),
    r'summary': PropertySchema(
      id: 13,
      name: r'summary',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 14,
      name: r'title',
      type: IsarType.string,
    ),
    r'totalPages': PropertySchema(
      id: 15,
      name: r'totalPages',
      type: IsarType.long,
    ),
    r'totalQuizes': PropertySchema(
      id: 16,
      name: r'totalQuizes',
      type: IsarType.long,
    ),
    r'updatedAt': PropertySchema(
      id: 17,
      name: r'updatedAt',
      type: IsarType.dateTime,
    )
  },
  estimateSize: _bookLocalModelEstimateSize,
  serialize: _bookLocalModelSerialize,
  deserialize: _bookLocalModelDeserialize,
  deserializeProp: _bookLocalModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'BookPageLocalModel': BookPageLocalModelSchema,
    r'BookReactionLocalModel': BookReactionLocalModelSchema
  },
  getId: _bookLocalModelGetId,
  getLinks: _bookLocalModelGetLinks,
  attach: _bookLocalModelAttach,
  version: '3.3.0',
);

int _bookLocalModelEstimateSize(
  BookLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.bookAsset;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.bookCover;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.bookId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.category;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.pages;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[BookPageLocalModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              BookPageLocalModelSchema.estimateSize(value, offsets, allOffsets);
        }
      }
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

void _bookLocalModelSerialize(
  BookLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.bookAsset);
  writer.writeString(offsets[1], object.bookCover);
  writer.writeString(offsets[2], object.bookId);
  writer.writeString(offsets[3], object.category);
  writer.writeDateTime(offsets[4], object.createdAt);
  writer.writeBool(offsets[5], object.isGenerateQuizSupported);
  writer.writeBool(offsets[6], object.isHaveQuiz);
  writer.writeObjectList<BookPageLocalModel>(
    offsets[7],
    allOffsets,
    BookPageLocalModelSchema.serialize,
    object.pages,
  );
  writer.writeLong(offsets[8], object.quizType);
  writer.writeObject<BookReactionLocalModel>(
    offsets[9],
    allOffsets,
    BookReactionLocalModelSchema.serialize,
    object.reactions,
  );
  writer.writeLong(offsets[10], object.reads);
  writer.writeStringList(offsets[11], object.rewards);
  writer.writeLong(offsets[12], object.sizeInBytes);
  writer.writeString(offsets[13], object.summary);
  writer.writeString(offsets[14], object.title);
  writer.writeLong(offsets[15], object.totalPages);
  writer.writeLong(offsets[16], object.totalQuizes);
  writer.writeDateTime(offsets[17], object.updatedAt);
}

BookLocalModel _bookLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BookLocalModel(
    bookAsset: reader.readStringOrNull(offsets[0]),
    bookCover: reader.readStringOrNull(offsets[1]),
    bookId: reader.readStringOrNull(offsets[2]),
    category: reader.readStringOrNull(offsets[3]),
    createdAt: reader.readDateTimeOrNull(offsets[4]),
    isGenerateQuizSupported: reader.readBoolOrNull(offsets[5]),
    isHaveQuiz: reader.readBoolOrNull(offsets[6]),
    pages: reader.readObjectList<BookPageLocalModel>(
      offsets[7],
      BookPageLocalModelSchema.deserialize,
      allOffsets,
      BookPageLocalModel(),
    ),
    quizType: reader.readLongOrNull(offsets[8]),
    reactions: reader.readObjectOrNull<BookReactionLocalModel>(
      offsets[9],
      BookReactionLocalModelSchema.deserialize,
      allOffsets,
    ),
    reads: reader.readLongOrNull(offsets[10]),
    rewards: reader.readStringList(offsets[11]),
    sizeInBytes: reader.readLongOrNull(offsets[12]),
    summary: reader.readStringOrNull(offsets[13]),
    title: reader.readStringOrNull(offsets[14]),
    totalPages: reader.readLongOrNull(offsets[15]),
    totalQuizes: reader.readLongOrNull(offsets[16]),
    updatedAt: reader.readDateTimeOrNull(offsets[17]),
  );
  object.id = id;
  return object;
}

P _bookLocalModelDeserializeProp<P>(
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
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readObjectList<BookPageLocalModel>(
        offset,
        BookPageLocalModelSchema.deserialize,
        allOffsets,
        BookPageLocalModel(),
      )) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readObjectOrNull<BookReactionLocalModel>(
        offset,
        BookReactionLocalModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readStringList(offset)) as P;
    case 12:
      return (reader.readLongOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readStringOrNull(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    case 16:
      return (reader.readLongOrNull(offset)) as P;
    case 17:
      return (reader.readDateTimeOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _bookLocalModelGetId(BookLocalModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _bookLocalModelGetLinks(BookLocalModel object) {
  return [];
}

void _bookLocalModelAttach(
    IsarCollection<dynamic> col, Id id, BookLocalModel object) {
  object.id = id;
}

extension BookLocalModelQueryWhereSort
    on QueryBuilder<BookLocalModel, BookLocalModel, QWhere> {
  QueryBuilder<BookLocalModel, BookLocalModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BookLocalModelQueryWhere
    on QueryBuilder<BookLocalModel, BookLocalModel, QWhereClause> {
  QueryBuilder<BookLocalModel, BookLocalModel, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterWhereClause> idNotEqualTo(
      Id id) {
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterWhereClause> idBetween(
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

extension BookLocalModelQueryFilter
    on QueryBuilder<BookLocalModel, BookLocalModel, QFilterCondition> {
  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookAssetIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bookAsset',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookAssetIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bookAsset',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookAssetEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookAsset',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookAssetGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bookAsset',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookAssetLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bookAsset',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookAssetBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bookAsset',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookAssetStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bookAsset',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookAssetEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bookAsset',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookAssetContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bookAsset',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookAssetMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bookAsset',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookAssetIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookAsset',
        value: '',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookAssetIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bookAsset',
        value: '',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookCoverIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bookCover',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookCoverIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bookCover',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookCoverEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookCover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookCoverGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bookCover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookCoverLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bookCover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookCoverBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bookCover',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookCoverStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bookCover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookCoverEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bookCover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookCoverContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bookCover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookCoverMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bookCover',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookCoverIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookCover',
        value: '',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookCoverIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bookCover',
        value: '',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bookId',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bookId',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookIdEqualTo(
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookIdGreaterThan(
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookIdLessThan(
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookIdBetween(
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookIdStartsWith(
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookIdEndsWith(
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bookId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bookId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookId',
        value: '',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      bookIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bookId',
        value: '',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      categoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      categoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      categoryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'category',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      categoryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'category',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      isGenerateQuizSupportedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isGenerateQuizSupported',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      isGenerateQuizSupportedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isGenerateQuizSupported',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      isGenerateQuizSupportedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isGenerateQuizSupported',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      isHaveQuizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isHaveQuiz',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      isHaveQuizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isHaveQuiz',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      isHaveQuizEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isHaveQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      pagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'pages',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      pagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'pages',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      pagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pages',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      pagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pages',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      pagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pages',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      pagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pages',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      pagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pages',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      pagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'pages',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      quizTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quizType',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      quizTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quizType',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      quizTypeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizType',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      quizTypeGreaterThan(
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      quizTypeLessThan(
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      quizTypeBetween(
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      reactionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reactions',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      reactionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reactions',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      readsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reads',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      readsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reads',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      readsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reads',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      rewardsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'rewards',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      rewardsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'rewards',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      rewardsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'rewards',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      rewardsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'rewards',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      rewardsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'rewards',
        value: '',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      rewardsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'rewards',
        value: '',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      sizeInBytesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'sizeInBytes',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      sizeInBytesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'sizeInBytes',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      sizeInBytesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'sizeInBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      sizeInBytesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'sizeInBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      sizeInBytesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'sizeInBytes',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      sizeInBytesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'sizeInBytes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      summaryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'summary',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      summaryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'summary',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      summaryContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'summary',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      summaryMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'summary',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      summaryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'summary',
        value: '',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      summaryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'summary',
        value: '',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      titleContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      titleMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      totalPagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalPages',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      totalPagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalPages',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      totalPagesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPages',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      totalPagesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalPages',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      totalPagesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalPages',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      totalPagesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalPages',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      totalQuizesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalQuizes',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      totalQuizesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalQuizes',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      totalQuizesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalQuizes',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      totalQuizesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalQuizes',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      totalQuizesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalQuizes',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      totalQuizesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalQuizes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
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

extension BookLocalModelQueryObject
    on QueryBuilder<BookLocalModel, BookLocalModel, QFilterCondition> {
  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition>
      pagesElement(FilterQuery<BookPageLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'pages');
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterFilterCondition> reactions(
      FilterQuery<BookReactionLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'reactions');
    });
  }
}

extension BookLocalModelQueryLinks
    on QueryBuilder<BookLocalModel, BookLocalModel, QFilterCondition> {}

extension BookLocalModelQuerySortBy
    on QueryBuilder<BookLocalModel, BookLocalModel, QSortBy> {
  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> sortByBookAsset() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookAsset', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByBookAssetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookAsset', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> sortByBookCover() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookCover', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByBookCoverDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookCover', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> sortByBookId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookId', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByBookIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookId', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByIsGenerateQuizSupported() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGenerateQuizSupported', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByIsGenerateQuizSupportedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGenerateQuizSupported', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByIsHaveQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByIsHaveQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> sortByQuizType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizType', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByQuizTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizType', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> sortByReads() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reads', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> sortByReadsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reads', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortBySizeInBytes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeInBytes', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortBySizeInBytesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeInBytes', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> sortBySummary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortBySummaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByTotalPages() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPages', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByTotalPagesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPages', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByTotalQuizes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuizes', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByTotalQuizesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuizes', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension BookLocalModelQuerySortThenBy
    on QueryBuilder<BookLocalModel, BookLocalModel, QSortThenBy> {
  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> thenByBookAsset() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookAsset', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByBookAssetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookAsset', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> thenByBookCover() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookCover', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByBookCoverDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookCover', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> thenByBookId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookId', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByBookIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookId', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByIsGenerateQuizSupported() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGenerateQuizSupported', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByIsGenerateQuizSupportedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isGenerateQuizSupported', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByIsHaveQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByIsHaveQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> thenByQuizType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizType', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByQuizTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quizType', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> thenByReads() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reads', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> thenByReadsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reads', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenBySizeInBytes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeInBytes', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenBySizeInBytesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'sizeInBytes', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> thenBySummary() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenBySummaryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'summary', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByTotalPages() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPages', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByTotalPagesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPages', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByTotalQuizes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuizes', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByTotalQuizesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuizes', Sort.desc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy> thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }
}

extension BookLocalModelQueryWhereDistinct
    on QueryBuilder<BookLocalModel, BookLocalModel, QDistinct> {
  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct> distinctByBookAsset(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bookAsset', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct> distinctByBookCover(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bookCover', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct> distinctByBookId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bookId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct> distinctByCategory(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct>
      distinctByIsGenerateQuizSupported() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isGenerateQuizSupported');
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct>
      distinctByIsHaveQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isHaveQuiz');
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct> distinctByQuizType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quizType');
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct> distinctByReads() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reads');
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct> distinctByRewards() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'rewards');
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct>
      distinctBySizeInBytes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'sizeInBytes');
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct> distinctBySummary(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'summary', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct>
      distinctByTotalPages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalPages');
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct>
      distinctByTotalQuizes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalQuizes');
    });
  }

  QueryBuilder<BookLocalModel, BookLocalModel, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }
}

extension BookLocalModelQueryProperty
    on QueryBuilder<BookLocalModel, BookLocalModel, QQueryProperty> {
  QueryBuilder<BookLocalModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BookLocalModel, String?, QQueryOperations> bookAssetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bookAsset');
    });
  }

  QueryBuilder<BookLocalModel, String?, QQueryOperations> bookCoverProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bookCover');
    });
  }

  QueryBuilder<BookLocalModel, String?, QQueryOperations> bookIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bookId');
    });
  }

  QueryBuilder<BookLocalModel, String?, QQueryOperations> categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<BookLocalModel, DateTime?, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<BookLocalModel, bool?, QQueryOperations>
      isGenerateQuizSupportedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isGenerateQuizSupported');
    });
  }

  QueryBuilder<BookLocalModel, bool?, QQueryOperations> isHaveQuizProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isHaveQuiz');
    });
  }

  QueryBuilder<BookLocalModel, List<BookPageLocalModel>?, QQueryOperations>
      pagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pages');
    });
  }

  QueryBuilder<BookLocalModel, int?, QQueryOperations> quizTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quizType');
    });
  }

  QueryBuilder<BookLocalModel, BookReactionLocalModel?, QQueryOperations>
      reactionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reactions');
    });
  }

  QueryBuilder<BookLocalModel, int?, QQueryOperations> readsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reads');
    });
  }

  QueryBuilder<BookLocalModel, List<String>?, QQueryOperations>
      rewardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rewards');
    });
  }

  QueryBuilder<BookLocalModel, int?, QQueryOperations> sizeInBytesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'sizeInBytes');
    });
  }

  QueryBuilder<BookLocalModel, String?, QQueryOperations> summaryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'summary');
    });
  }

  QueryBuilder<BookLocalModel, String?, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<BookLocalModel, int?, QQueryOperations> totalPagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalPages');
    });
  }

  QueryBuilder<BookLocalModel, int?, QQueryOperations> totalQuizesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalQuizes');
    });
  }

  QueryBuilder<BookLocalModel, DateTime?, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }
}

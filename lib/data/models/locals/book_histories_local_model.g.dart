// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_histories_local_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBookHistoryLocalModelCollection on Isar {
  IsarCollection<BookHistoryLocalModel> get bookHistoryLocalModels =>
      this.collection();
}

const BookHistoryLocalModelSchema = CollectionSchema(
  name: r'BookHistoryLocalModel',
  id: -5936357945201706348,
  properties: {
    r'bookCover': PropertySchema(
      id: 0,
      name: r'bookCover',
      type: IsarType.string,
    ),
    r'bookId': PropertySchema(
      id: 1,
      name: r'bookId',
      type: IsarType.string,
    ),
    r'category': PropertySchema(
      id: 2,
      name: r'category',
      type: IsarType.string,
    ),
    r'claimedRewards': PropertySchema(
      id: 3,
      name: r'claimedRewards',
      type: IsarType.longList,
    ),
    r'completedQuizes': PropertySchema(
      id: 4,
      name: r'completedQuizes',
      type: IsarType.longList,
    ),
    r'finishedAt': PropertySchema(
      id: 5,
      name: r'finishedAt',
      type: IsarType.dateTime,
    ),
    r'isFinished': PropertySchema(
      id: 6,
      name: r'isFinished',
      type: IsarType.bool,
    ),
    r'isHaveQuiz': PropertySchema(
      id: 7,
      name: r'isHaveQuiz',
      type: IsarType.bool,
    ),
    r'lastReadAt': PropertySchema(
      id: 8,
      name: r'lastReadAt',
      type: IsarType.dateTime,
    ),
    r'quiz': PropertySchema(
      id: 9,
      name: r'quiz',
      type: IsarType.object,
      target: r'BookHistoryQuizLocalModel',
    ),
    r'readPages': PropertySchema(
      id: 10,
      name: r'readPages',
      type: IsarType.long,
    ),
    r'startedAt': PropertySchema(
      id: 11,
      name: r'startedAt',
      type: IsarType.dateTime,
    ),
    r'title': PropertySchema(
      id: 12,
      name: r'title',
      type: IsarType.string,
    ),
    r'totalPages': PropertySchema(
      id: 13,
      name: r'totalPages',
      type: IsarType.long,
    ),
    r'totalQuizes': PropertySchema(
      id: 14,
      name: r'totalQuizes',
      type: IsarType.long,
    ),
    r'totalReadingSeconds': PropertySchema(
      id: 15,
      name: r'totalReadingSeconds',
      type: IsarType.long,
    )
  },
  estimateSize: _bookHistoryLocalModelEstimateSize,
  serialize: _bookHistoryLocalModelSerialize,
  deserialize: _bookHistoryLocalModelDeserialize,
  deserializeProp: _bookHistoryLocalModelDeserializeProp,
  idName: r'id',
  indexes: {
    r'bookId': IndexSchema(
      id: 3567540928881766442,
      name: r'bookId',
      unique: false,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'bookId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {
    r'BookHistoryQuizLocalModel': BookHistoryQuizLocalModelSchema,
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
  getId: _bookHistoryLocalModelGetId,
  getLinks: _bookHistoryLocalModelGetLinks,
  attach: _bookHistoryLocalModelAttach,
  version: '3.3.0',
);

int _bookHistoryLocalModelEstimateSize(
  BookHistoryLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
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
    final value = object.claimedRewards;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.completedQuizes;
    if (value != null) {
      bytesCount += 3 + value.length * 8;
    }
  }
  {
    final value = object.quiz;
    if (value != null) {
      bytesCount += 3 +
          BookHistoryQuizLocalModelSchema.estimateSize(
              value, allOffsets[BookHistoryQuizLocalModel]!, allOffsets);
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

void _bookHistoryLocalModelSerialize(
  BookHistoryLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.bookCover);
  writer.writeString(offsets[1], object.bookId);
  writer.writeString(offsets[2], object.category);
  writer.writeLongList(offsets[3], object.claimedRewards);
  writer.writeLongList(offsets[4], object.completedQuizes);
  writer.writeDateTime(offsets[5], object.finishedAt);
  writer.writeBool(offsets[6], object.isFinished);
  writer.writeBool(offsets[7], object.isHaveQuiz);
  writer.writeDateTime(offsets[8], object.lastReadAt);
  writer.writeObject<BookHistoryQuizLocalModel>(
    offsets[9],
    allOffsets,
    BookHistoryQuizLocalModelSchema.serialize,
    object.quiz,
  );
  writer.writeLong(offsets[10], object.readPages);
  writer.writeDateTime(offsets[11], object.startedAt);
  writer.writeString(offsets[12], object.title);
  writer.writeLong(offsets[13], object.totalPages);
  writer.writeLong(offsets[14], object.totalQuizes);
  writer.writeLong(offsets[15], object.totalReadingSeconds);
}

BookHistoryLocalModel _bookHistoryLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BookHistoryLocalModel(
    bookCover: reader.readStringOrNull(offsets[0]),
    bookId: reader.readStringOrNull(offsets[1]),
    category: reader.readStringOrNull(offsets[2]),
    claimedRewards: reader.readLongList(offsets[3]),
    completedQuizes: reader.readLongList(offsets[4]),
    finishedAt: reader.readDateTimeOrNull(offsets[5]),
    isFinished: reader.readBoolOrNull(offsets[6]),
    isHaveQuiz: reader.readBoolOrNull(offsets[7]),
    lastReadAt: reader.readDateTimeOrNull(offsets[8]),
    quiz: reader.readObjectOrNull<BookHistoryQuizLocalModel>(
      offsets[9],
      BookHistoryQuizLocalModelSchema.deserialize,
      allOffsets,
    ),
    readPages: reader.readLongOrNull(offsets[10]),
    startedAt: reader.readDateTimeOrNull(offsets[11]),
    title: reader.readStringOrNull(offsets[12]),
    totalPages: reader.readLongOrNull(offsets[13]),
    totalQuizes: reader.readLongOrNull(offsets[14]),
    totalReadingSeconds: reader.readLongOrNull(offsets[15]),
  );
  object.id = id;
  return object;
}

P _bookHistoryLocalModelDeserializeProp<P>(
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
      return (reader.readLongList(offset)) as P;
    case 4:
      return (reader.readLongList(offset)) as P;
    case 5:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readObjectOrNull<BookHistoryQuizLocalModel>(
        offset,
        BookHistoryQuizLocalModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    case 13:
      return (reader.readLongOrNull(offset)) as P;
    case 14:
      return (reader.readLongOrNull(offset)) as P;
    case 15:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _bookHistoryLocalModelGetId(BookHistoryLocalModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _bookHistoryLocalModelGetLinks(
    BookHistoryLocalModel object) {
  return [];
}

void _bookHistoryLocalModelAttach(
    IsarCollection<dynamic> col, Id id, BookHistoryLocalModel object) {
  object.id = id;
}

extension BookHistoryLocalModelQueryWhereSort
    on QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QWhere> {
  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BookHistoryLocalModelQueryWhere on QueryBuilder<BookHistoryLocalModel,
    BookHistoryLocalModel, QWhereClause> {
  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterWhereClause>
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterWhereClause>
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterWhereClause>
      bookIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'bookId',
        value: [null],
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterWhereClause>
      bookIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.between(
        indexName: r'bookId',
        lower: [null],
        includeLower: false,
        upper: [],
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterWhereClause>
      bookIdEqualTo(String? bookId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'bookId',
        value: [bookId],
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterWhereClause>
      bookIdNotEqualTo(String? bookId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bookId',
              lower: [],
              upper: [bookId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bookId',
              lower: [bookId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bookId',
              lower: [bookId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'bookId',
              lower: [],
              upper: [bookId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension BookHistoryLocalModelQueryFilter on QueryBuilder<
    BookHistoryLocalModel, BookHistoryLocalModel, QFilterCondition> {
  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> bookCoverIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bookCover',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> bookCoverIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bookCover',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> bookCoverEqualTo(
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> bookCoverGreaterThan(
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> bookCoverLessThan(
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> bookCoverBetween(
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> bookCoverStartsWith(
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> bookCoverEndsWith(
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
          QAfterFilterCondition>
      bookCoverContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bookCover',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
          QAfterFilterCondition>
      bookCoverMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bookCover',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> bookCoverIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookCover',
        value: '',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> bookCoverIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bookCover',
        value: '',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> bookIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bookId',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> bookIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bookId',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> bookIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bookId',
        value: '',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> bookIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bookId',
        value: '',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> categoryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> categoryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'category',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> categoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> categoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'category',
        value: '',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'claimedRewards',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'claimedRewards',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> claimedRewardsElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'claimedRewards',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> completedQuizesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'completedQuizes',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> completedQuizesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'completedQuizes',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> completedQuizesElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'completedQuizes',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> completedQuizesElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'completedQuizes',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> completedQuizesElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'completedQuizes',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> completedQuizesElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'completedQuizes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> completedQuizesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'completedQuizes',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> completedQuizesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'completedQuizes',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> completedQuizesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'completedQuizes',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> completedQuizesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'completedQuizes',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> completedQuizesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'completedQuizes',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> completedQuizesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'completedQuizes',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> finishedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'finishedAt',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> finishedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'finishedAt',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> finishedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'finishedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> isFinishedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isFinished',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> isFinishedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isFinished',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> isFinishedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isFinished',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> isHaveQuizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isHaveQuiz',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> isHaveQuizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isHaveQuiz',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> isHaveQuizEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isHaveQuiz',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> lastReadAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastReadAt',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> lastReadAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastReadAt',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> lastReadAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastReadAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> quizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quiz',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> quizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quiz',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> readPagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'readPages',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> readPagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'readPages',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> readPagesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'readPages',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> readPagesGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'readPages',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> readPagesLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'readPages',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> readPagesBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'readPages',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> startedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'startedAt',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> startedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'startedAt',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> startedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'startedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> startedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'startedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> startedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'startedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> startedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'startedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> titleIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> titleIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'title',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalPagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalPages',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalPagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalPages',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalPagesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalPages',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalPagesGreaterThan(
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalPagesLessThan(
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalPagesBetween(
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalQuizesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalQuizes',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalQuizesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalQuizes',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalQuizesEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalQuizes',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalQuizesGreaterThan(
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalQuizesLessThan(
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalQuizesBetween(
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

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalReadingSecondsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalReadingSeconds',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalReadingSecondsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalReadingSeconds',
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalReadingSecondsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalReadingSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalReadingSecondsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalReadingSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalReadingSecondsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalReadingSeconds',
        value: value,
      ));
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> totalReadingSecondsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalReadingSeconds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BookHistoryLocalModelQueryObject on QueryBuilder<
    BookHistoryLocalModel, BookHistoryLocalModel, QFilterCondition> {
  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel,
      QAfterFilterCondition> quiz(FilterQuery<BookHistoryQuizLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'quiz');
    });
  }
}

extension BookHistoryLocalModelQueryLinks on QueryBuilder<BookHistoryLocalModel,
    BookHistoryLocalModel, QFilterCondition> {}

extension BookHistoryLocalModelQuerySortBy
    on QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QSortBy> {
  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByBookCover() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookCover', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByBookCoverDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookCover', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByBookId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookId', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByBookIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookId', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByFinishedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishedAt', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByFinishedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishedAt', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByIsFinished() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinished', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByIsFinishedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinished', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByIsHaveQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByIsHaveQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByLastReadAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReadAt', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByLastReadAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReadAt', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByReadPages() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readPages', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByReadPagesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readPages', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByStartedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByTotalPages() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPages', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByTotalPagesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPages', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByTotalQuizes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuizes', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByTotalQuizesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuizes', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByTotalReadingSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalReadingSeconds', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      sortByTotalReadingSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalReadingSeconds', Sort.desc);
    });
  }
}

extension BookHistoryLocalModelQuerySortThenBy
    on QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QSortThenBy> {
  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByBookCover() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookCover', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByBookCoverDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookCover', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByBookId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookId', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByBookIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bookId', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByCategory() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByCategoryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'category', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByFinishedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishedAt', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByFinishedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'finishedAt', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByIsFinished() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinished', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByIsFinishedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isFinished', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByIsHaveQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByIsHaveQuizDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isHaveQuiz', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByLastReadAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReadAt', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByLastReadAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastReadAt', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByReadPages() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readPages', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByReadPagesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'readPages', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByStartedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'startedAt', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByTotalPages() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPages', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByTotalPagesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalPages', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByTotalQuizes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuizes', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByTotalQuizesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalQuizes', Sort.desc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByTotalReadingSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalReadingSeconds', Sort.asc);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QAfterSortBy>
      thenByTotalReadingSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalReadingSeconds', Sort.desc);
    });
  }
}

extension BookHistoryLocalModelQueryWhereDistinct
    on QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct> {
  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByBookCover({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bookCover', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByBookId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bookId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByCategory({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'category', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByClaimedRewards() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'claimedRewards');
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByCompletedQuizes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'completedQuizes');
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByFinishedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'finishedAt');
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByIsFinished() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isFinished');
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByIsHaveQuiz() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isHaveQuiz');
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByLastReadAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastReadAt');
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByReadPages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'readPages');
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByStartedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'startedAt');
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByTitle({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByTotalPages() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalPages');
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByTotalQuizes() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalQuizes');
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryLocalModel, QDistinct>
      distinctByTotalReadingSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalReadingSeconds');
    });
  }
}

extension BookHistoryLocalModelQueryProperty on QueryBuilder<
    BookHistoryLocalModel, BookHistoryLocalModel, QQueryProperty> {
  QueryBuilder<BookHistoryLocalModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BookHistoryLocalModel, String?, QQueryOperations>
      bookCoverProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bookCover');
    });
  }

  QueryBuilder<BookHistoryLocalModel, String?, QQueryOperations>
      bookIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bookId');
    });
  }

  QueryBuilder<BookHistoryLocalModel, String?, QQueryOperations>
      categoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'category');
    });
  }

  QueryBuilder<BookHistoryLocalModel, List<int>?, QQueryOperations>
      claimedRewardsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'claimedRewards');
    });
  }

  QueryBuilder<BookHistoryLocalModel, List<int>?, QQueryOperations>
      completedQuizesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'completedQuizes');
    });
  }

  QueryBuilder<BookHistoryLocalModel, DateTime?, QQueryOperations>
      finishedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'finishedAt');
    });
  }

  QueryBuilder<BookHistoryLocalModel, bool?, QQueryOperations>
      isFinishedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isFinished');
    });
  }

  QueryBuilder<BookHistoryLocalModel, bool?, QQueryOperations>
      isHaveQuizProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isHaveQuiz');
    });
  }

  QueryBuilder<BookHistoryLocalModel, DateTime?, QQueryOperations>
      lastReadAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastReadAt');
    });
  }

  QueryBuilder<BookHistoryLocalModel, BookHistoryQuizLocalModel?,
      QQueryOperations> quizProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quiz');
    });
  }

  QueryBuilder<BookHistoryLocalModel, int?, QQueryOperations>
      readPagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'readPages');
    });
  }

  QueryBuilder<BookHistoryLocalModel, DateTime?, QQueryOperations>
      startedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'startedAt');
    });
  }

  QueryBuilder<BookHistoryLocalModel, String?, QQueryOperations>
      titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }

  QueryBuilder<BookHistoryLocalModel, int?, QQueryOperations>
      totalPagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalPages');
    });
  }

  QueryBuilder<BookHistoryLocalModel, int?, QQueryOperations>
      totalQuizesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalQuizes');
    });
  }

  QueryBuilder<BookHistoryLocalModel, int?, QQueryOperations>
      totalReadingSecondsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalReadingSeconds');
    });
  }
}

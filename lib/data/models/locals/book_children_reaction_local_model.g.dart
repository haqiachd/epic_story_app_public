// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_children_reaction_local_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetBookChildReactionLocalModelCollection on Isar {
  IsarCollection<BookChildReactionLocalModel>
      get bookChildReactionLocalModels => this.collection();
}

const BookChildReactionLocalModelSchema = CollectionSchema(
  name: r'BookChildReactionLocalModel',
  id: 102972974424646060,
  properties: {
    r'childId': PropertySchema(
      id: 0,
      name: r'childId',
      type: IsarType.string,
    ),
    r'fullName': PropertySchema(
      id: 1,
      name: r'fullName',
      type: IsarType.string,
    ),
    r'profilePicture': PropertySchema(
      id: 2,
      name: r'profilePicture',
      type: IsarType.string,
    ),
    r'reactedAt': PropertySchema(
      id: 3,
      name: r'reactedAt',
      type: IsarType.dateTime,
    ),
    r'reactionType': PropertySchema(
      id: 4,
      name: r'reactionType',
      type: IsarType.string,
    )
  },
  estimateSize: _bookChildReactionLocalModelEstimateSize,
  serialize: _bookChildReactionLocalModelSerialize,
  deserialize: _bookChildReactionLocalModelDeserialize,
  deserializeProp: _bookChildReactionLocalModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _bookChildReactionLocalModelGetId,
  getLinks: _bookChildReactionLocalModelGetLinks,
  attach: _bookChildReactionLocalModelAttach,
  version: '3.3.0',
);

int _bookChildReactionLocalModelEstimateSize(
  BookChildReactionLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.childId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.fullName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.profilePicture;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.reactionType;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _bookChildReactionLocalModelSerialize(
  BookChildReactionLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.childId);
  writer.writeString(offsets[1], object.fullName);
  writer.writeString(offsets[2], object.profilePicture);
  writer.writeDateTime(offsets[3], object.reactedAt);
  writer.writeString(offsets[4], object.reactionType);
}

BookChildReactionLocalModel _bookChildReactionLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BookChildReactionLocalModel(
    childId: reader.readStringOrNull(offsets[0]),
    fullName: reader.readStringOrNull(offsets[1]),
    profilePicture: reader.readStringOrNull(offsets[2]),
    reactedAt: reader.readDateTimeOrNull(offsets[3]),
    reactionType: reader.readStringOrNull(offsets[4]),
  );
  object.id = id;
  return object;
}

P _bookChildReactionLocalModelDeserializeProp<P>(
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
      return (reader.readDateTimeOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _bookChildReactionLocalModelGetId(BookChildReactionLocalModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _bookChildReactionLocalModelGetLinks(
    BookChildReactionLocalModel object) {
  return [];
}

void _bookChildReactionLocalModelAttach(
    IsarCollection<dynamic> col, Id id, BookChildReactionLocalModel object) {
  object.id = id;
}

extension BookChildReactionLocalModelQueryWhereSort on QueryBuilder<
    BookChildReactionLocalModel, BookChildReactionLocalModel, QWhere> {
  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension BookChildReactionLocalModelQueryWhere on QueryBuilder<
    BookChildReactionLocalModel, BookChildReactionLocalModel, QWhereClause> {
  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
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

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterWhereClause> idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterWhereClause> idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
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

extension BookChildReactionLocalModelQueryFilter on QueryBuilder<
    BookChildReactionLocalModel,
    BookChildReactionLocalModel,
    QFilterCondition> {
  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> childIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'childId',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> childIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'childId',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> childIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'childId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> childIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'childId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> childIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'childId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> childIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'childId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> childIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'childId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> childIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'childId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
          QAfterFilterCondition>
      childIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'childId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
          QAfterFilterCondition>
      childIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'childId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> childIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'childId',
        value: '',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> childIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'childId',
        value: '',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> fullNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fullName',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> fullNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fullName',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> fullNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> fullNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> fullNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> fullNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fullName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> fullNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> fullNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
          QAfterFilterCondition>
      fullNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
          QAfterFilterCondition>
      fullNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fullName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> fullNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullName',
        value: '',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> fullNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fullName',
        value: '',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
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

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
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

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
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

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> profilePictureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'profilePicture',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> profilePictureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'profilePicture',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> profilePictureEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profilePicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> profilePictureGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'profilePicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> profilePictureLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'profilePicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> profilePictureBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'profilePicture',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> profilePictureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'profilePicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> profilePictureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'profilePicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
          QAfterFilterCondition>
      profilePictureContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'profilePicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
          QAfterFilterCondition>
      profilePictureMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'profilePicture',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> profilePictureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profilePicture',
        value: '',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> profilePictureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'profilePicture',
        value: '',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reactedAt',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reactedAt',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reactedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reactedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reactedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reactedAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactionTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'reactionType',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactionTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'reactionType',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactionTypeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reactionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactionTypeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'reactionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactionTypeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'reactionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactionTypeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'reactionType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactionTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'reactionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactionTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'reactionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
          QAfterFilterCondition>
      reactionTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'reactionType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
          QAfterFilterCondition>
      reactionTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'reactionType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactionTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'reactionType',
        value: '',
      ));
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterFilterCondition> reactionTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'reactionType',
        value: '',
      ));
    });
  }
}

extension BookChildReactionLocalModelQueryObject on QueryBuilder<
    BookChildReactionLocalModel,
    BookChildReactionLocalModel,
    QFilterCondition> {}

extension BookChildReactionLocalModelQueryLinks on QueryBuilder<
    BookChildReactionLocalModel,
    BookChildReactionLocalModel,
    QFilterCondition> {}

extension BookChildReactionLocalModelQuerySortBy on QueryBuilder<
    BookChildReactionLocalModel, BookChildReactionLocalModel, QSortBy> {
  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> sortByChildId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'childId', Sort.asc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> sortByChildIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'childId', Sort.desc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> sortByFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.asc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> sortByFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.desc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> sortByProfilePicture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profilePicture', Sort.asc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> sortByProfilePictureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profilePicture', Sort.desc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> sortByReactedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reactedAt', Sort.asc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> sortByReactedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reactedAt', Sort.desc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> sortByReactionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reactionType', Sort.asc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> sortByReactionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reactionType', Sort.desc);
    });
  }
}

extension BookChildReactionLocalModelQuerySortThenBy on QueryBuilder<
    BookChildReactionLocalModel, BookChildReactionLocalModel, QSortThenBy> {
  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> thenByChildId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'childId', Sort.asc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> thenByChildIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'childId', Sort.desc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> thenByFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.asc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> thenByFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.desc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> thenByProfilePicture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profilePicture', Sort.asc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> thenByProfilePictureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profilePicture', Sort.desc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> thenByReactedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reactedAt', Sort.asc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> thenByReactedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reactedAt', Sort.desc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> thenByReactionType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reactionType', Sort.asc);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QAfterSortBy> thenByReactionTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'reactionType', Sort.desc);
    });
  }
}

extension BookChildReactionLocalModelQueryWhereDistinct on QueryBuilder<
    BookChildReactionLocalModel, BookChildReactionLocalModel, QDistinct> {
  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QDistinct> distinctByChildId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'childId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QDistinct> distinctByFullName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QDistinct> distinctByProfilePicture({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'profilePicture',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QDistinct> distinctByReactedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reactedAt');
    });
  }

  QueryBuilder<BookChildReactionLocalModel, BookChildReactionLocalModel,
      QDistinct> distinctByReactionType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'reactionType', caseSensitive: caseSensitive);
    });
  }
}

extension BookChildReactionLocalModelQueryProperty on QueryBuilder<
    BookChildReactionLocalModel, BookChildReactionLocalModel, QQueryProperty> {
  QueryBuilder<BookChildReactionLocalModel, int, QQueryOperations>
      idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<BookChildReactionLocalModel, String?, QQueryOperations>
      childIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'childId');
    });
  }

  QueryBuilder<BookChildReactionLocalModel, String?, QQueryOperations>
      fullNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullName');
    });
  }

  QueryBuilder<BookChildReactionLocalModel, String?, QQueryOperations>
      profilePictureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'profilePicture');
    });
  }

  QueryBuilder<BookChildReactionLocalModel, DateTime?, QQueryOperations>
      reactedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reactedAt');
    });
  }

  QueryBuilder<BookChildReactionLocalModel, String?, QQueryOperations>
      reactionTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'reactionType');
    });
  }
}

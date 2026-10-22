// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_reaction_local_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const BookReactionLocalModelSchema = Schema(
  name: r'BookReactionLocalModel',
  id: -3455168327638551766,
  properties: {
    r'clappingHand': PropertySchema(
      id: 0,
      name: r'clappingHand',
      type: IsarType.long,
    ),
    r'heart': PropertySchema(
      id: 1,
      name: r'heart',
      type: IsarType.long,
    ),
    r'laughing': PropertySchema(
      id: 2,
      name: r'laughing',
      type: IsarType.long,
    ),
    r'lightBulb': PropertySchema(
      id: 3,
      name: r'lightBulb',
      type: IsarType.long,
    )
  },
  estimateSize: _bookReactionLocalModelEstimateSize,
  serialize: _bookReactionLocalModelSerialize,
  deserialize: _bookReactionLocalModelDeserialize,
  deserializeProp: _bookReactionLocalModelDeserializeProp,
);

int _bookReactionLocalModelEstimateSize(
  BookReactionLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _bookReactionLocalModelSerialize(
  BookReactionLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.clappingHand);
  writer.writeLong(offsets[1], object.heart);
  writer.writeLong(offsets[2], object.laughing);
  writer.writeLong(offsets[3], object.lightBulb);
}

BookReactionLocalModel _bookReactionLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = BookReactionLocalModel(
    clappingHand: reader.readLongOrNull(offsets[0]),
    heart: reader.readLongOrNull(offsets[1]),
    laughing: reader.readLongOrNull(offsets[2]),
    lightBulb: reader.readLongOrNull(offsets[3]),
  );
  return object;
}

P _bookReactionLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension BookReactionLocalModelQueryFilter on QueryBuilder<
    BookReactionLocalModel, BookReactionLocalModel, QFilterCondition> {
  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> clappingHandIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'clappingHand',
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> clappingHandIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'clappingHand',
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> clappingHandEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'clappingHand',
        value: value,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> clappingHandGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'clappingHand',
        value: value,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> clappingHandLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'clappingHand',
        value: value,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> clappingHandBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'clappingHand',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> heartIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'heart',
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> heartIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'heart',
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> heartEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'heart',
        value: value,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> heartGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'heart',
        value: value,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> heartLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'heart',
        value: value,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> heartBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'heart',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> laughingIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'laughing',
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> laughingIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'laughing',
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> laughingEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'laughing',
        value: value,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> laughingGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'laughing',
        value: value,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> laughingLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'laughing',
        value: value,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> laughingBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'laughing',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> lightBulbIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lightBulb',
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> lightBulbIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lightBulb',
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> lightBulbEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lightBulb',
        value: value,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> lightBulbGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lightBulb',
        value: value,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> lightBulbLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lightBulb',
        value: value,
      ));
    });
  }

  QueryBuilder<BookReactionLocalModel, BookReactionLocalModel,
      QAfterFilterCondition> lightBulbBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lightBulb',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension BookReactionLocalModelQueryObject on QueryBuilder<
    BookReactionLocalModel, BookReactionLocalModel, QFilterCondition> {}

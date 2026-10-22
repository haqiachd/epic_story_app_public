// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flashcard_card_local_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const FlashcardCardLocalModelSchema = Schema(
  name: r'FlashcardCardLocalModel',
  id: 6575971321924941277,
  properties: {
    r'image': PropertySchema(
      id: 0,
      name: r'image',
      type: IsarType.string,
    ),
    r'isQuizGenerated': PropertySchema(
      id: 1,
      name: r'isQuizGenerated',
      type: IsarType.bool,
    ),
    r'nPage': PropertySchema(
      id: 2,
      name: r'nPage',
      type: IsarType.long,
    ),
    r'quiz': PropertySchema(
      id: 3,
      name: r'quiz',
      type: IsarType.object,
      target: r'FlashcardQuizLocalModel',
    ),
    r'quizType': PropertySchema(
      id: 4,
      name: r'quizType',
      type: IsarType.long,
    ),
    r'text': PropertySchema(
      id: 5,
      name: r'text',
      type: IsarType.string,
    )
  },
  estimateSize: _flashcardCardLocalModelEstimateSize,
  serialize: _flashcardCardLocalModelSerialize,
  deserialize: _flashcardCardLocalModelDeserialize,
  deserializeProp: _flashcardCardLocalModelDeserializeProp,
);

int _flashcardCardLocalModelEstimateSize(
  FlashcardCardLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.quiz;
    if (value != null) {
      bytesCount += 3 +
          FlashcardQuizLocalModelSchema.estimateSize(
              value, allOffsets[FlashcardQuizLocalModel]!, allOffsets);
    }
  }
  {
    final value = object.text;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _flashcardCardLocalModelSerialize(
  FlashcardCardLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.image);
  writer.writeBool(offsets[1], object.isQuizGenerated);
  writer.writeLong(offsets[2], object.nPage);
  writer.writeObject<FlashcardQuizLocalModel>(
    offsets[3],
    allOffsets,
    FlashcardQuizLocalModelSchema.serialize,
    object.quiz,
  );
  writer.writeLong(offsets[4], object.quizType);
  writer.writeString(offsets[5], object.text);
}

FlashcardCardLocalModel _flashcardCardLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = FlashcardCardLocalModel(
    image: reader.readStringOrNull(offsets[0]),
    isQuizGenerated: reader.readBoolOrNull(offsets[1]),
    nPage: reader.readLongOrNull(offsets[2]),
    quiz: reader.readObjectOrNull<FlashcardQuizLocalModel>(
      offsets[3],
      FlashcardQuizLocalModelSchema.deserialize,
      allOffsets,
    ),
    quizType: reader.readLongOrNull(offsets[4]),
    text: reader.readStringOrNull(offsets[5]),
  );
  return object;
}

P _flashcardCardLocalModelDeserializeProp<P>(
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
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readObjectOrNull<FlashcardQuizLocalModel>(
        offset,
        FlashcardQuizLocalModelSchema.deserialize,
        allOffsets,
      )) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension FlashcardCardLocalModelQueryFilter on QueryBuilder<
    FlashcardCardLocalModel, FlashcardCardLocalModel, QFilterCondition> {
  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> imageEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> imageGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> imageLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> imageBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
          QAfterFilterCondition>
      imageContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
          QAfterFilterCondition>
      imageMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> isQuizGeneratedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isQuizGenerated',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> isQuizGeneratedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isQuizGenerated',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> isQuizGeneratedEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isQuizGenerated',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> nPageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nPage',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> nPageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nPage',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> nPageEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nPage',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> nPageGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nPage',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> nPageLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nPage',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> nPageBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nPage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> quizIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quiz',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> quizIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quiz',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> quizTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quizType',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> quizTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quizType',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> quizTypeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizType',
        value: value,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> quizTypeGreaterThan(
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

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> quizTypeLessThan(
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

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> quizTypeBetween(
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

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> textIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'text',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> textIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'text',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> textEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> textGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> textLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> textBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'text',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> textStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> textEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
          QAfterFilterCondition>
      textContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'text',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
          QAfterFilterCondition>
      textMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'text',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> textIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'text',
        value: '',
      ));
    });
  }

  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> textIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'text',
        value: '',
      ));
    });
  }
}

extension FlashcardCardLocalModelQueryObject on QueryBuilder<
    FlashcardCardLocalModel, FlashcardCardLocalModel, QFilterCondition> {
  QueryBuilder<FlashcardCardLocalModel, FlashcardCardLocalModel,
      QAfterFilterCondition> quiz(FilterQuery<FlashcardQuizLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'quiz');
    });
  }
}

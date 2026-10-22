// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_fill_blank_answer_local_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const QuizFillBlankAnswerLocalModelSchema = Schema(
  name: r'QuizFillBlankAnswerLocalModel',
  id: 6803163713676921993,
  properties: {
    r'assignedBlankEntries': PropertySchema(
      id: 0,
      name: r'assignedBlankEntries',
      type: IsarType.stringList,
    )
  },
  estimateSize: _quizFillBlankAnswerLocalModelEstimateSize,
  serialize: _quizFillBlankAnswerLocalModelSerialize,
  deserialize: _quizFillBlankAnswerLocalModelDeserialize,
  deserializeProp: _quizFillBlankAnswerLocalModelDeserializeProp,
);

int _quizFillBlankAnswerLocalModelEstimateSize(
  QuizFillBlankAnswerLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.assignedBlankEntries;
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
  return bytesCount;
}

void _quizFillBlankAnswerLocalModelSerialize(
  QuizFillBlankAnswerLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.assignedBlankEntries);
}

QuizFillBlankAnswerLocalModel _quizFillBlankAnswerLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuizFillBlankAnswerLocalModel(
    assignedBlankEntries: reader.readStringList(offsets[0]),
  );
  return object;
}

P _quizFillBlankAnswerLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension QuizFillBlankAnswerLocalModelQueryFilter on QueryBuilder<
    QuizFillBlankAnswerLocalModel,
    QuizFillBlankAnswerLocalModel,
    QFilterCondition> {
  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'assignedBlankEntries',
      ));
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'assignedBlankEntries',
      ));
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assignedBlankEntries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assignedBlankEntries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assignedBlankEntries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assignedBlankEntries',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'assignedBlankEntries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'assignedBlankEntries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
          QAfterFilterCondition>
      assignedBlankEntriesElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'assignedBlankEntries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
          QAfterFilterCondition>
      assignedBlankEntriesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'assignedBlankEntries',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assignedBlankEntries',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'assignedBlankEntries',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'assignedBlankEntries',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'assignedBlankEntries',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'assignedBlankEntries',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'assignedBlankEntries',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'assignedBlankEntries',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuizFillBlankAnswerLocalModel, QuizFillBlankAnswerLocalModel,
      QAfterFilterCondition> assignedBlankEntriesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'assignedBlankEntries',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension QuizFillBlankAnswerLocalModelQueryObject on QueryBuilder<
    QuizFillBlankAnswerLocalModel,
    QuizFillBlankAnswerLocalModel,
    QFilterCondition> {}

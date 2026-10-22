// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_group_answer_local_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const QuizGroupAnswerLocalModelSchema = Schema(
  name: r'QuizGroupAnswerLocalModel',
  id: 6746883664298732806,
  properties: {
    r'assignedGroupEntries': PropertySchema(
      id: 0,
      name: r'assignedGroupEntries',
      type: IsarType.stringList,
    )
  },
  estimateSize: _quizGroupAnswerLocalModelEstimateSize,
  serialize: _quizGroupAnswerLocalModelSerialize,
  deserialize: _quizGroupAnswerLocalModelDeserialize,
  deserializeProp: _quizGroupAnswerLocalModelDeserializeProp,
);

int _quizGroupAnswerLocalModelEstimateSize(
  QuizGroupAnswerLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.assignedGroupEntries;
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

void _quizGroupAnswerLocalModelSerialize(
  QuizGroupAnswerLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.assignedGroupEntries);
}

QuizGroupAnswerLocalModel _quizGroupAnswerLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuizGroupAnswerLocalModel(
    assignedGroupEntries: reader.readStringList(offsets[0]),
  );
  return object;
}

P _quizGroupAnswerLocalModelDeserializeProp<P>(
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

extension QuizGroupAnswerLocalModelQueryFilter on QueryBuilder<
    QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel, QFilterCondition> {
  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'assignedGroupEntries',
      ));
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'assignedGroupEntries',
      ));
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assignedGroupEntries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assignedGroupEntries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assignedGroupEntries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assignedGroupEntries',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'assignedGroupEntries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'assignedGroupEntries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
          QAfterFilterCondition>
      assignedGroupEntriesElementContains(String value,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'assignedGroupEntries',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
          QAfterFilterCondition>
      assignedGroupEntriesElementMatches(String pattern,
          {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'assignedGroupEntries',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assignedGroupEntries',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'assignedGroupEntries',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'assignedGroupEntries',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'assignedGroupEntries',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'assignedGroupEntries',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'assignedGroupEntries',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'assignedGroupEntries',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel,
      QAfterFilterCondition> assignedGroupEntriesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'assignedGroupEntries',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }
}

extension QuizGroupAnswerLocalModelQueryObject on QueryBuilder<
    QuizGroupAnswerLocalModel, QuizGroupAnswerLocalModel, QFilterCondition> {}

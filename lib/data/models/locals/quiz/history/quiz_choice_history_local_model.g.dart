// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_choice_history_local_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const QuizChoiceAnswerLocalModelSchema = Schema(
  name: r'QuizChoiceAnswerLocalModel',
  id: 8024296799794205195,
  properties: {
    r'selectedAnswer': PropertySchema(
      id: 0,
      name: r'selectedAnswer',
      type: IsarType.long,
    )
  },
  estimateSize: _quizChoiceAnswerLocalModelEstimateSize,
  serialize: _quizChoiceAnswerLocalModelSerialize,
  deserialize: _quizChoiceAnswerLocalModelDeserialize,
  deserializeProp: _quizChoiceAnswerLocalModelDeserializeProp,
);

int _quizChoiceAnswerLocalModelEstimateSize(
  QuizChoiceAnswerLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _quizChoiceAnswerLocalModelSerialize(
  QuizChoiceAnswerLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.selectedAnswer);
}

QuizChoiceAnswerLocalModel _quizChoiceAnswerLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuizChoiceAnswerLocalModel(
    selectedAnswer: reader.readLongOrNull(offsets[0]),
  );
  return object;
}

P _quizChoiceAnswerLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension QuizChoiceAnswerLocalModelQueryFilter on QueryBuilder<
    QuizChoiceAnswerLocalModel, QuizChoiceAnswerLocalModel, QFilterCondition> {
  QueryBuilder<QuizChoiceAnswerLocalModel, QuizChoiceAnswerLocalModel,
      QAfterFilterCondition> selectedAnswerIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'selectedAnswer',
      ));
    });
  }

  QueryBuilder<QuizChoiceAnswerLocalModel, QuizChoiceAnswerLocalModel,
      QAfterFilterCondition> selectedAnswerIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'selectedAnswer',
      ));
    });
  }

  QueryBuilder<QuizChoiceAnswerLocalModel, QuizChoiceAnswerLocalModel,
      QAfterFilterCondition> selectedAnswerEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'selectedAnswer',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizChoiceAnswerLocalModel, QuizChoiceAnswerLocalModel,
      QAfterFilterCondition> selectedAnswerGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'selectedAnswer',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizChoiceAnswerLocalModel, QuizChoiceAnswerLocalModel,
      QAfterFilterCondition> selectedAnswerLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'selectedAnswer',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizChoiceAnswerLocalModel, QuizChoiceAnswerLocalModel,
      QAfterFilterCondition> selectedAnswerBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'selectedAnswer',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension QuizChoiceAnswerLocalModelQueryObject on QueryBuilder<
    QuizChoiceAnswerLocalModel, QuizChoiceAnswerLocalModel, QFilterCondition> {}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_choice_local_model.dart';

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const QuizChoiceLocalModelSchema = Schema(
  name: r'QuizChoiceLocalModel',
  id: 2888340191021499481,
  properties: {
    r'choices': PropertySchema(
      id: 0,
      name: r'choices',
      type: IsarType.stringList,
    ),
    r'correctedIndex': PropertySchema(
      id: 1,
      name: r'correctedIndex',
      type: IsarType.long,
    ),
    r'explanation': PropertySchema(
      id: 2,
      name: r'explanation',
      type: IsarType.string,
    ),
    r'image': PropertySchema(
      id: 3,
      name: r'image',
      type: IsarType.string,
    ),
    r'question': PropertySchema(
      id: 4,
      name: r'question',
      type: IsarType.string,
    ),
    r'quizType': PropertySchema(
      id: 5,
      name: r'quizType',
      type: IsarType.long,
    )
  },
  estimateSize: _quizChoiceLocalModelEstimateSize,
  serialize: _quizChoiceLocalModelSerialize,
  deserialize: _quizChoiceLocalModelDeserialize,
  deserializeProp: _quizChoiceLocalModelDeserializeProp,
);

int _quizChoiceLocalModelEstimateSize(
  QuizChoiceLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.choices;
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
    final value = object.explanation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.image;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.question;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _quizChoiceLocalModelSerialize(
  QuizChoiceLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeStringList(offsets[0], object.choices);
  writer.writeLong(offsets[1], object.correctedIndex);
  writer.writeString(offsets[2], object.explanation);
  writer.writeString(offsets[3], object.image);
  writer.writeString(offsets[4], object.question);
  writer.writeLong(offsets[5], object.quizType);
}

QuizChoiceLocalModel _quizChoiceLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = QuizChoiceLocalModel(
    choices: reader.readStringList(offsets[0]),
    correctedIndex: reader.readLongOrNull(offsets[1]),
    explanation: reader.readStringOrNull(offsets[2]),
    image: reader.readStringOrNull(offsets[3]),
    question: reader.readStringOrNull(offsets[4]),
    quizType: reader.readLongOrNull(offsets[5]),
  );
  return object;
}

P _quizChoiceLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringList(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension QuizChoiceLocalModelQueryFilter on QueryBuilder<QuizChoiceLocalModel,
    QuizChoiceLocalModel, QFilterCondition> {
  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'choices',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'choices',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'choices',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'choices',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'choices',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'choices',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'choices',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'choices',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
          QAfterFilterCondition>
      choicesElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'choices',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
          QAfterFilterCondition>
      choicesElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'choices',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'choices',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'choices',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'choices',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'choices',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'choices',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'choices',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'choices',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> choicesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'choices',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> correctedIndexIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'correctedIndex',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> correctedIndexIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'correctedIndex',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> correctedIndexEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'correctedIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> correctedIndexGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'correctedIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> correctedIndexLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'correctedIndex',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> correctedIndexBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'correctedIndex',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> explanationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'explanation',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> explanationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'explanation',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> explanationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> explanationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> explanationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> explanationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'explanation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> explanationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> explanationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
          QAfterFilterCondition>
      explanationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'explanation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
          QAfterFilterCondition>
      explanationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'explanation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> explanationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'explanation',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> explanationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'explanation',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> imageIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> imageIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'image',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
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

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
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

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
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

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
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

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
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

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
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

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
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

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
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

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> questionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'question',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> questionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'question',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> questionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> questionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> questionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> questionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'question',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> questionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> questionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
          QAfterFilterCondition>
      questionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'question',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
          QAfterFilterCondition>
      questionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'question',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> questionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'question',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> questionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'question',
        value: '',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> quizTypeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quizType',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> quizTypeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quizType',
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
      QAfterFilterCondition> quizTypeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quizType',
        value: value,
      ));
    });
  }

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
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

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
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

  QueryBuilder<QuizChoiceLocalModel, QuizChoiceLocalModel,
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
}

extension QuizChoiceLocalModelQueryObject on QueryBuilder<QuizChoiceLocalModel,
    QuizChoiceLocalModel, QFilterCondition> {}

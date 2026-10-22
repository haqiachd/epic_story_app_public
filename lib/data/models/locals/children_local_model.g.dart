// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'children_local_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetChildrenLocalModelCollection on Isar {
  IsarCollection<ChildrenLocalModel> get childrenLocalModels =>
      this.collection();
}

const ChildrenLocalModelSchema = CollectionSchema(
  name: r'ChildrenLocalModel',
  id: 7090376905988784400,
  properties: {
    r'collections': PropertySchema(
      id: 0,
      name: r'collections',
      type: IsarType.objectList,
      target: r'ChildrenCollectionLocalModel',
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'dateBirth': PropertySchema(
      id: 2,
      name: r'dateBirth',
      type: IsarType.dateTime,
    ),
    r'email': PropertySchema(
      id: 3,
      name: r'email',
      type: IsarType.string,
    ),
    r'flashcardCollections': PropertySchema(
      id: 4,
      name: r'flashcardCollections',
      type: IsarType.objectList,
      target: r'FlashCardCollectionLocalModel',
    ),
    r'fullName': PropertySchema(
      id: 5,
      name: r'fullName',
      type: IsarType.string,
    ),
    r'gender': PropertySchema(
      id: 6,
      name: r'gender',
      type: IsarType.string,
    ),
    r'gradeClass': PropertySchema(
      id: 7,
      name: r'gradeClass',
      type: IsarType.long,
    ),
    r'lastSignInAt': PropertySchema(
      id: 8,
      name: r'lastSignInAt',
      type: IsarType.dateTime,
    ),
    r'photoPicture': PropertySchema(
      id: 9,
      name: r'photoPicture',
      type: IsarType.string,
    ),
    r'updatedAt': PropertySchema(
      id: 10,
      name: r'updatedAt',
      type: IsarType.dateTime,
    ),
    r'userId': PropertySchema(
      id: 11,
      name: r'userId',
      type: IsarType.string,
    )
  },
  estimateSize: _childrenLocalModelEstimateSize,
  serialize: _childrenLocalModelSerialize,
  deserialize: _childrenLocalModelDeserialize,
  deserializeProp: _childrenLocalModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'ChildrenCollectionLocalModel': ChildrenCollectionLocalModelSchema,
    r'FlashCardCollectionLocalModel': FlashCardCollectionLocalModelSchema
  },
  getId: _childrenLocalModelGetId,
  getLinks: _childrenLocalModelGetLinks,
  attach: _childrenLocalModelAttach,
  version: '3.3.0',
);

int _childrenLocalModelEstimateSize(
  ChildrenLocalModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final list = object.collections;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[ChildrenCollectionLocalModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += ChildrenCollectionLocalModelSchema.estimateSize(
              value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.flashcardCollections;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[FlashCardCollectionLocalModel]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += FlashCardCollectionLocalModelSchema.estimateSize(
              value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.fullName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.gender;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.photoPicture;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.userId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _childrenLocalModelSerialize(
  ChildrenLocalModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<ChildrenCollectionLocalModel>(
    offsets[0],
    allOffsets,
    ChildrenCollectionLocalModelSchema.serialize,
    object.collections,
  );
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeDateTime(offsets[2], object.dateBirth);
  writer.writeString(offsets[3], object.email);
  writer.writeObjectList<FlashCardCollectionLocalModel>(
    offsets[4],
    allOffsets,
    FlashCardCollectionLocalModelSchema.serialize,
    object.flashcardCollections,
  );
  writer.writeString(offsets[5], object.fullName);
  writer.writeString(offsets[6], object.gender);
  writer.writeLong(offsets[7], object.gradeClass);
  writer.writeDateTime(offsets[8], object.lastSignInAt);
  writer.writeString(offsets[9], object.photoPicture);
  writer.writeDateTime(offsets[10], object.updatedAt);
  writer.writeString(offsets[11], object.userId);
}

ChildrenLocalModel _childrenLocalModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ChildrenLocalModel(
    collections: reader.readObjectList<ChildrenCollectionLocalModel>(
      offsets[0],
      ChildrenCollectionLocalModelSchema.deserialize,
      allOffsets,
      ChildrenCollectionLocalModel(),
    ),
    createdAt: reader.readDateTimeOrNull(offsets[1]),
    dateBirth: reader.readDateTimeOrNull(offsets[2]),
    email: reader.readStringOrNull(offsets[3]),
    flashcardCollections: reader.readObjectList<FlashCardCollectionLocalModel>(
      offsets[4],
      FlashCardCollectionLocalModelSchema.deserialize,
      allOffsets,
      FlashCardCollectionLocalModel(),
    ),
    fullName: reader.readStringOrNull(offsets[5]),
    gender: reader.readStringOrNull(offsets[6]),
    gradeClass: reader.readLongOrNull(offsets[7]),
    lastSignInAt: reader.readDateTimeOrNull(offsets[8]),
    photoPicture: reader.readStringOrNull(offsets[9]),
    updatedAt: reader.readDateTimeOrNull(offsets[10]),
    userId: reader.readStringOrNull(offsets[11]),
  );
  object.id = id;
  return object;
}

P _childrenLocalModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<ChildrenCollectionLocalModel>(
        offset,
        ChildrenCollectionLocalModelSchema.deserialize,
        allOffsets,
        ChildrenCollectionLocalModel(),
      )) as P;
    case 1:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 2:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readObjectList<FlashCardCollectionLocalModel>(
        offset,
        FlashCardCollectionLocalModelSchema.deserialize,
        allOffsets,
        FlashCardCollectionLocalModel(),
      )) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readDateTimeOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _childrenLocalModelGetId(ChildrenLocalModel object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _childrenLocalModelGetLinks(
    ChildrenLocalModel object) {
  return [];
}

void _childrenLocalModelAttach(
    IsarCollection<dynamic> col, Id id, ChildrenLocalModel object) {
  object.id = id;
}

extension ChildrenLocalModelQueryWhereSort
    on QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QWhere> {
  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ChildrenLocalModelQueryWhere
    on QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QWhereClause> {
  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterWhereClause>
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterWhereClause>
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
}

extension ChildrenLocalModelQueryFilter
    on QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QFilterCondition> {
  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      collectionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'collections',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      collectionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'collections',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      collectionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'collections',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      collectionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'collections',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      collectionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'collections',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      collectionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'collections',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      collectionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'collections',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      collectionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'collections',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      dateBirthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'dateBirth',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      dateBirthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'dateBirth',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      dateBirthEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dateBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      dateBirthGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dateBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      dateBirthLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dateBirth',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      dateBirthBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dateBirth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      emailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      emailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      flashcardCollectionsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'flashcardCollections',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      flashcardCollectionsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'flashcardCollections',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      flashcardCollectionsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flashcardCollections',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      flashcardCollectionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flashcardCollections',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      flashcardCollectionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flashcardCollections',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      flashcardCollectionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flashcardCollections',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      flashcardCollectionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flashcardCollections',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      flashcardCollectionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'flashcardCollections',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      fullNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fullName',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      fullNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fullName',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      fullNameEqualTo(
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      fullNameGreaterThan(
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      fullNameLessThan(
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      fullNameBetween(
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      fullNameStartsWith(
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      fullNameEndsWith(
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      fullNameContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fullName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      fullNameMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fullName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      fullNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fullName',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      fullNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fullName',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      genderIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gender',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      genderIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gender',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      genderEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      genderGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      genderLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      genderBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gender',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      genderStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      genderEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      genderContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'gender',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      genderMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'gender',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      genderIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gender',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      genderIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'gender',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      gradeClassIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'gradeClass',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      gradeClassIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'gradeClass',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      gradeClassEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gradeClass',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      gradeClassGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gradeClass',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      gradeClassLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gradeClass',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      gradeClassBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gradeClass',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      lastSignInAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastSignInAt',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      lastSignInAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastSignInAt',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      lastSignInAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastSignInAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      lastSignInAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastSignInAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      lastSignInAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastSignInAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      lastSignInAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastSignInAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      photoPictureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'photoPicture',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      photoPictureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'photoPicture',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      photoPictureEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoPicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      photoPictureGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photoPicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      photoPictureLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photoPicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      photoPictureBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photoPicture',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      photoPictureStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photoPicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      photoPictureEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photoPicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      photoPictureContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photoPicture',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      photoPictureMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photoPicture',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      photoPictureIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photoPicture',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      photoPictureIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photoPicture',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      updatedAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      updatedAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'updatedAt',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      updatedAtEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updatedAt',
        value: value,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
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

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      userIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      userIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      userIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      userIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      userIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      userIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      userIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      userIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }
}

extension ChildrenLocalModelQueryObject
    on QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QFilterCondition> {
  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      collectionsElement(FilterQuery<ChildrenCollectionLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'collections');
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterFilterCondition>
      flashcardCollectionsElement(
          FilterQuery<FlashCardCollectionLocalModel> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'flashcardCollections');
    });
  }
}

extension ChildrenLocalModelQueryLinks
    on QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QFilterCondition> {}

extension ChildrenLocalModelQuerySortBy
    on QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QSortBy> {
  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByDateBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateBirth', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByDateBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateBirth', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByGradeClass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradeClass', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByGradeClassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradeClass', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByLastSignInAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSignInAt', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByLastSignInAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSignInAt', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByPhotoPicture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPicture', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByPhotoPictureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPicture', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension ChildrenLocalModelQuerySortThenBy
    on QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QSortThenBy> {
  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByDateBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateBirth', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByDateBirthDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dateBirth', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByFullName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByFullNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fullName', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByGender() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByGenderDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gender', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByGradeClass() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradeClass', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByGradeClassDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'gradeClass', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByLastSignInAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSignInAt', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByLastSignInAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastSignInAt', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByPhotoPicture() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPicture', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByPhotoPictureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photoPicture', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updatedAt', Sort.desc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QAfterSortBy>
      thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension ChildrenLocalModelQueryWhereDistinct
    on QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QDistinct> {
  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QDistinct>
      distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QDistinct>
      distinctByDateBirth() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dateBirth');
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QDistinct>
      distinctByEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QDistinct>
      distinctByFullName({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fullName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QDistinct>
      distinctByGender({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gender', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QDistinct>
      distinctByGradeClass() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gradeClass');
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QDistinct>
      distinctByLastSignInAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastSignInAt');
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QDistinct>
      distinctByPhotoPicture({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photoPicture', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QDistinct>
      distinctByUpdatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updatedAt');
    });
  }

  QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QDistinct>
      distinctByUserId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }
}

extension ChildrenLocalModelQueryProperty
    on QueryBuilder<ChildrenLocalModel, ChildrenLocalModel, QQueryProperty> {
  QueryBuilder<ChildrenLocalModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ChildrenLocalModel, List<ChildrenCollectionLocalModel>?,
      QQueryOperations> collectionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'collections');
    });
  }

  QueryBuilder<ChildrenLocalModel, DateTime?, QQueryOperations>
      createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<ChildrenLocalModel, DateTime?, QQueryOperations>
      dateBirthProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dateBirth');
    });
  }

  QueryBuilder<ChildrenLocalModel, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<ChildrenLocalModel, List<FlashCardCollectionLocalModel>?,
      QQueryOperations> flashcardCollectionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'flashcardCollections');
    });
  }

  QueryBuilder<ChildrenLocalModel, String?, QQueryOperations>
      fullNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fullName');
    });
  }

  QueryBuilder<ChildrenLocalModel, String?, QQueryOperations> genderProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gender');
    });
  }

  QueryBuilder<ChildrenLocalModel, int?, QQueryOperations>
      gradeClassProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gradeClass');
    });
  }

  QueryBuilder<ChildrenLocalModel, DateTime?, QQueryOperations>
      lastSignInAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastSignInAt');
    });
  }

  QueryBuilder<ChildrenLocalModel, String?, QQueryOperations>
      photoPictureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photoPicture');
    });
  }

  QueryBuilder<ChildrenLocalModel, DateTime?, QQueryOperations>
      updatedAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updatedAt');
    });
  }

  QueryBuilder<ChildrenLocalModel, String?, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }
}

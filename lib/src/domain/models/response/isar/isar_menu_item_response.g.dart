// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_menu_item_response.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetIsarMenuItemResponseCollection on Isar {
  IsarCollection<IsarMenuItemResponse> get isarMenuItemResponses =>
      this.collection();
}

const IsarMenuItemResponseSchema = CollectionSchema(
  name: r'IsarMenuItemResponse',
  id: 6681072805443052183,
  properties: {
    r'menuItems': PropertySchema(
      id: 0,
      name: r'menuItems',
      type: IsarType.objectList,
      target: r'IsarMenuItem',
    ),
    r'number': PropertySchema(
      id: 1,
      name: r'number',
      type: IsarType.long,
    ),
    r'offset': PropertySchema(
      id: 2,
      name: r'offset',
      type: IsarType.long,
    ),
    r'processingTimeMs': PropertySchema(
      id: 3,
      name: r'processingTimeMs',
      type: IsarType.long,
    ),
    r'totalMenuItems': PropertySchema(
      id: 4,
      name: r'totalMenuItems',
      type: IsarType.long,
    ),
    r'type': PropertySchema(
      id: 5,
      name: r'type',
      type: IsarType.string,
    )
  },
  estimateSize: _isarMenuItemResponseEstimateSize,
  serialize: _isarMenuItemResponseSerialize,
  deserialize: _isarMenuItemResponseDeserialize,
  deserializeProp: _isarMenuItemResponseDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'IsarMenuItem': IsarMenuItemSchema,
    r'IsarServings': IsarServingsSchema
  },
  getId: _isarMenuItemResponseGetId,
  getLinks: _isarMenuItemResponseGetLinks,
  attach: _isarMenuItemResponseAttach,
  version: '3.1.0+1',
);

int _isarMenuItemResponseEstimateSize(
  IsarMenuItemResponse object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.menuItems.length * 3;
  {
    final offsets = allOffsets[IsarMenuItem]!;
    for (var i = 0; i < object.menuItems.length; i++) {
      final value = object.menuItems[i];
      bytesCount += IsarMenuItemSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 + object.type.length * 3;
  return bytesCount;
}

void _isarMenuItemResponseSerialize(
  IsarMenuItemResponse object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeObjectList<IsarMenuItem>(
    offsets[0],
    allOffsets,
    IsarMenuItemSchema.serialize,
    object.menuItems,
  );
  writer.writeLong(offsets[1], object.number);
  writer.writeLong(offsets[2], object.offset);
  writer.writeLong(offsets[3], object.processingTimeMs);
  writer.writeLong(offsets[4], object.totalMenuItems);
  writer.writeString(offsets[5], object.type);
}

IsarMenuItemResponse _isarMenuItemResponseDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarMenuItemResponse();
  object.id = id;
  object.menuItems = reader.readObjectList<IsarMenuItem>(
        offsets[0],
        IsarMenuItemSchema.deserialize,
        allOffsets,
        IsarMenuItem(),
      ) ??
      [];
  object.number = reader.readLong(offsets[1]);
  object.offset = reader.readLong(offsets[2]);
  object.processingTimeMs = reader.readLong(offsets[3]);
  object.totalMenuItems = reader.readLong(offsets[4]);
  object.type = reader.readString(offsets[5]);
  return object;
}

P _isarMenuItemResponseDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readObjectList<IsarMenuItem>(
            offset,
            IsarMenuItemSchema.deserialize,
            allOffsets,
            IsarMenuItem(),
          ) ??
          []) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _isarMenuItemResponseGetId(IsarMenuItemResponse object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _isarMenuItemResponseGetLinks(
    IsarMenuItemResponse object) {
  return [];
}

void _isarMenuItemResponseAttach(
    IsarCollection<dynamic> col, Id id, IsarMenuItemResponse object) {
  object.id = id;
}

extension IsarMenuItemResponseQueryWhereSort
    on QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QWhere> {
  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterWhere>
      anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension IsarMenuItemResponseQueryWhere
    on QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QWhereClause> {
  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterWhereClause>
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

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterWhereClause>
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

extension IsarMenuItemResponseQueryFilter on QueryBuilder<IsarMenuItemResponse,
    IsarMenuItemResponse, QFilterCondition> {
  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> idGreaterThan(
    Id? value, {
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

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> idLessThan(
    Id? value, {
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

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> menuItemsLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'menuItems',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> menuItemsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'menuItems',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> menuItemsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'menuItems',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> menuItemsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'menuItems',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> menuItemsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'menuItems',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> menuItemsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'menuItems',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> numberEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> numberGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> numberLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'number',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> numberBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> offsetEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'offset',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> offsetGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'offset',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> offsetLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'offset',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> offsetBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'offset',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> processingTimeMsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'processingTimeMs',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> processingTimeMsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'processingTimeMs',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> processingTimeMsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'processingTimeMs',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> processingTimeMsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'processingTimeMs',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> totalMenuItemsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalMenuItems',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> totalMenuItemsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalMenuItems',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> totalMenuItemsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalMenuItems',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> totalMenuItemsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalMenuItems',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> typeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> typeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> typeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> typeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> typeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> typeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
          QAfterFilterCondition>
      typeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'type',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
          QAfterFilterCondition>
      typeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'type',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> typeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> typeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'type',
        value: '',
      ));
    });
  }
}

extension IsarMenuItemResponseQueryObject on QueryBuilder<IsarMenuItemResponse,
    IsarMenuItemResponse, QFilterCondition> {
  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse,
      QAfterFilterCondition> menuItemsElement(FilterQuery<IsarMenuItem> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'menuItems');
    });
  }
}

extension IsarMenuItemResponseQueryLinks on QueryBuilder<IsarMenuItemResponse,
    IsarMenuItemResponse, QFilterCondition> {}

extension IsarMenuItemResponseQuerySortBy
    on QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QSortBy> {
  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      sortByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      sortByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      sortByOffset() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offset', Sort.asc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      sortByOffsetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offset', Sort.desc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      sortByProcessingTimeMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'processingTimeMs', Sort.asc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      sortByProcessingTimeMsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'processingTimeMs', Sort.desc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      sortByTotalMenuItems() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalMenuItems', Sort.asc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      sortByTotalMenuItemsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalMenuItems', Sort.desc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension IsarMenuItemResponseQuerySortThenBy
    on QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QSortThenBy> {
  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      thenByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.asc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      thenByNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'number', Sort.desc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      thenByOffset() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offset', Sort.asc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      thenByOffsetDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'offset', Sort.desc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      thenByProcessingTimeMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'processingTimeMs', Sort.asc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      thenByProcessingTimeMsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'processingTimeMs', Sort.desc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      thenByTotalMenuItems() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalMenuItems', Sort.asc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      thenByTotalMenuItemsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalMenuItems', Sort.desc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QAfterSortBy>
      thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }
}

extension IsarMenuItemResponseQueryWhereDistinct
    on QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QDistinct> {
  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QDistinct>
      distinctByNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'number');
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QDistinct>
      distinctByOffset() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'offset');
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QDistinct>
      distinctByProcessingTimeMs() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'processingTimeMs');
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QDistinct>
      distinctByTotalMenuItems() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalMenuItems');
    });
  }

  QueryBuilder<IsarMenuItemResponse, IsarMenuItemResponse, QDistinct>
      distinctByType({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type', caseSensitive: caseSensitive);
    });
  }
}

extension IsarMenuItemResponseQueryProperty on QueryBuilder<
    IsarMenuItemResponse, IsarMenuItemResponse, QQueryProperty> {
  QueryBuilder<IsarMenuItemResponse, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<IsarMenuItemResponse, List<IsarMenuItem>, QQueryOperations>
      menuItemsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'menuItems');
    });
  }

  QueryBuilder<IsarMenuItemResponse, int, QQueryOperations> numberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'number');
    });
  }

  QueryBuilder<IsarMenuItemResponse, int, QQueryOperations> offsetProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'offset');
    });
  }

  QueryBuilder<IsarMenuItemResponse, int, QQueryOperations>
      processingTimeMsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'processingTimeMs');
    });
  }

  QueryBuilder<IsarMenuItemResponse, int, QQueryOperations>
      totalMenuItemsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalMenuItems');
    });
  }

  QueryBuilder<IsarMenuItemResponse, String, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const IsarMenuItemSchema = Schema(
  name: r'IsarMenuItem',
  id: -4255425866820853603,
  properties: {
    r'id': PropertySchema(
      id: 0,
      name: r'id',
      type: IsarType.long,
    ),
    r'image': PropertySchema(
      id: 1,
      name: r'image',
      type: IsarType.string,
    ),
    r'imageType': PropertySchema(
      id: 2,
      name: r'imageType',
      type: IsarType.string,
    ),
    r'restaurantChain': PropertySchema(
      id: 3,
      name: r'restaurantChain',
      type: IsarType.string,
    ),
    r'servings': PropertySchema(
      id: 4,
      name: r'servings',
      type: IsarType.object,
      target: r'IsarServings',
    ),
    r'title': PropertySchema(
      id: 5,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _isarMenuItemEstimateSize,
  serialize: _isarMenuItemSerialize,
  deserialize: _isarMenuItemDeserialize,
  deserializeProp: _isarMenuItemDeserializeProp,
);

int _isarMenuItemEstimateSize(
  IsarMenuItem object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.image.length * 3;
  bytesCount += 3 + object.imageType.length * 3;
  bytesCount += 3 + object.restaurantChain.length * 3;
  bytesCount += 3 +
      IsarServingsSchema.estimateSize(
          object.servings, allOffsets[IsarServings]!, allOffsets);
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _isarMenuItemSerialize(
  IsarMenuItem object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.id);
  writer.writeString(offsets[1], object.image);
  writer.writeString(offsets[2], object.imageType);
  writer.writeString(offsets[3], object.restaurantChain);
  writer.writeObject<IsarServings>(
    offsets[4],
    allOffsets,
    IsarServingsSchema.serialize,
    object.servings,
  );
  writer.writeString(offsets[5], object.title);
}

IsarMenuItem _isarMenuItemDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarMenuItem();
  object.id = reader.readLong(offsets[0]);
  object.image = reader.readString(offsets[1]);
  object.imageType = reader.readString(offsets[2]);
  object.restaurantChain = reader.readString(offsets[3]);
  object.servings = reader.readObjectOrNull<IsarServings>(
        offsets[4],
        IsarServingsSchema.deserialize,
        allOffsets,
      ) ??
      IsarServings();
  object.title = reader.readString(offsets[5]);
  return object;
}

P _isarMenuItemDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readObjectOrNull<IsarServings>(
            offset,
            IsarServingsSchema.deserialize,
            allOffsets,
          ) ??
          IsarServings()) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension IsarMenuItemQueryFilter
    on QueryBuilder<IsarMenuItem, IsarMenuItem, QFilterCondition> {
  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> idEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> idGreaterThan(
    int value, {
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> idLessThan(
    int value, {
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> imageEqualTo(
    String value, {
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      imageGreaterThan(
    String value, {
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> imageLessThan(
    String value, {
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> imageBetween(
    String lower,
    String upper, {
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      imageStartsWith(
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> imageEndsWith(
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> imageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> imageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      imageTypeEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      imageTypeGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'imageType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      imageTypeLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'imageType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      imageTypeBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'imageType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      imageTypeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'imageType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      imageTypeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'imageType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      imageTypeContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'imageType',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      imageTypeMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'imageType',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      imageTypeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'imageType',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      imageTypeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'imageType',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      restaurantChainEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'restaurantChain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      restaurantChainGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'restaurantChain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      restaurantChainLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'restaurantChain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      restaurantChainBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'restaurantChain',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      restaurantChainStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'restaurantChain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      restaurantChainEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'restaurantChain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      restaurantChainContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'restaurantChain',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      restaurantChainMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'restaurantChain',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      restaurantChainIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'restaurantChain',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      restaurantChainIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'restaurantChain',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> titleEqualTo(
    String value, {
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      titleGreaterThan(
    String value, {
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> titleLessThan(
    String value, {
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> titleEndsWith(
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

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> titleContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> titleMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition>
      titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension IsarMenuItemQueryObject
    on QueryBuilder<IsarMenuItem, IsarMenuItem, QFilterCondition> {
  QueryBuilder<IsarMenuItem, IsarMenuItem, QAfterFilterCondition> servings(
      FilterQuery<IsarServings> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'servings');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const IsarServingsSchema = Schema(
  name: r'IsarServings',
  id: -4456330265043044991,
  properties: {
    r'number': PropertySchema(
      id: 0,
      name: r'number',
      type: IsarType.double,
    ),
    r'size': PropertySchema(
      id: 1,
      name: r'size',
      type: IsarType.double,
    ),
    r'unit': PropertySchema(
      id: 2,
      name: r'unit',
      type: IsarType.string,
    )
  },
  estimateSize: _isarServingsEstimateSize,
  serialize: _isarServingsSerialize,
  deserialize: _isarServingsDeserialize,
  deserializeProp: _isarServingsDeserializeProp,
);

int _isarServingsEstimateSize(
  IsarServings object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.unit;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _isarServingsSerialize(
  IsarServings object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.number);
  writer.writeDouble(offsets[1], object.size);
  writer.writeString(offsets[2], object.unit);
}

IsarServings _isarServingsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = IsarServings();
  object.number = reader.readDouble(offsets[0]);
  object.size = reader.readDoubleOrNull(offsets[1]);
  object.unit = reader.readStringOrNull(offsets[2]);
  return object;
}

P _isarServingsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension IsarServingsQueryFilter
    on QueryBuilder<IsarServings, IsarServings, QFilterCondition> {
  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition> numberEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'number',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition>
      numberGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'number',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition>
      numberLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'number',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition> numberBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'number',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition> sizeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'size',
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition>
      sizeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'size',
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition> sizeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'size',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition>
      sizeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'size',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition> sizeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'size',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition> sizeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'size',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition> unitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'unit',
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition>
      unitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'unit',
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition> unitEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition>
      unitGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition> unitLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition> unitBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'unit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition>
      unitStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition> unitEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition> unitContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'unit',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition> unitMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'unit',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition>
      unitIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'unit',
        value: '',
      ));
    });
  }

  QueryBuilder<IsarServings, IsarServings, QAfterFilterCondition>
      unitIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'unit',
        value: '',
      ));
    });
  }
}

extension IsarServingsQueryObject
    on QueryBuilder<IsarServings, IsarServings, QFilterCondition> {}

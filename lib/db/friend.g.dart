// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'friend.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetFriendCollection on Isar {
  IsarCollection<Friend> get friends {
    return getCollection('Friend');
  }
}

final FriendSchema = CollectionSchema(
  name: 'Friend',
  schema:
      '{"name":"Friend","idName":"id","properties":[{"name":"birthday","type":"Long"},{"name":"birthdaySorting","type":"Long"},{"name":"createdAt","type":"Long"},{"name":"deleted","type":"Bool"},{"name":"description","type":"String"},{"name":"idMirror","type":"Long"},{"name":"name","type":"String"},{"name":"phone","type":"Long"},{"name":"phoneCode","type":"String"},{"name":"updatedAt","type":"Long"},{"name":"uuid","type":"String"}],"indexes":[{"name":"birthdaySorting","unique":false,"properties":[{"name":"birthdaySorting","type":"Value","caseSensitive":false}]}],"links":[{"name":"notes","target":"Note"},{"name":"photo","target":"Photo"}]}',
  nativeAdapter: const _FriendNativeAdapter(),
  webAdapter: const _FriendWebAdapter(),
  idName: 'id',
  propertyIds: {
    'birthday': 0,
    'birthdaySorting': 1,
    'createdAt': 2,
    'deleted': 3,
    'description': 4,
    'idMirror': 5,
    'name': 6,
    'phone': 7,
    'phoneCode': 8,
    'updatedAt': 9,
    'uuid': 10
  },
  listProperties: {},
  indexIds: {'birthdaySorting': 0},
  indexTypes: {
    'birthdaySorting': [
      NativeIndexType.long,
    ]
  },
  linkIds: {'notes': 0, 'photo': 1},
  backlinkIds: {'owner': 0},
  linkedCollections: ['Note', 'Photo', 'User'],
  getId: (obj) {
    if (obj.id == Isar.autoIncrement) {
      return null;
    } else {
      return obj.id;
    }
  },
  setId: null,
  getLinks: (obj) => [obj.notes, obj.photo, obj.owner],
  version: 2,
);

class _FriendWebAdapter extends IsarWebTypeAdapter<Friend> {
  const _FriendWebAdapter();

  @override
  Object serialize(IsarCollection<Friend> collection, Friend object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(
        jsObj, 'birthday', object.birthday.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'birthdaySorting', object.birthdaySorting);
    IsarNative.jsObjectSet(
        jsObj, 'createdAt', object.createdAt?.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'deleted', object.deleted);
    IsarNative.jsObjectSet(jsObj, 'description', object.description);
    IsarNative.jsObjectSet(jsObj, 'id', object.id);
    IsarNative.jsObjectSet(jsObj, 'idMirror', object.idMirror);
    IsarNative.jsObjectSet(jsObj, 'name', object.name);
    IsarNative.jsObjectSet(jsObj, 'phone', object.phone);
    IsarNative.jsObjectSet(jsObj, 'phoneCode', object.phoneCode);
    IsarNative.jsObjectSet(
        jsObj, 'updatedAt', object.updatedAt?.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'uuid', object.uuid);
    return jsObj;
  }

  @override
  Friend deserialize(IsarCollection<Friend> collection, dynamic jsObj) {
    final object = Friend(
      birthday: IsarNative.jsObjectGet(jsObj, 'birthday') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'birthday'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0),
      createdAt: IsarNative.jsObjectGet(jsObj, 'createdAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'createdAt'),
                  isUtc: true)
              .toLocal()
          : null,
      deleted: IsarNative.jsObjectGet(jsObj, 'deleted') ?? false,
      description: IsarNative.jsObjectGet(jsObj, 'description'),
      id: IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity,
      name: IsarNative.jsObjectGet(jsObj, 'name') ?? '',
      phone: IsarNative.jsObjectGet(jsObj, 'phone'),
      phoneCode: IsarNative.jsObjectGet(jsObj, 'phoneCode'),
      updatedAt: IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'updatedAt'),
                  isUtc: true)
              .toLocal()
          : null,
      uuid: IsarNative.jsObjectGet(jsObj, 'uuid'),
    );
    attachLinks(collection.isar,
        IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity, object);
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'birthday':
        return (IsarNative.jsObjectGet(jsObj, 'birthday') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'birthday'),
                    isUtc: true)
                .toLocal()
            : DateTime.fromMillisecondsSinceEpoch(0)) as P;
      case 'birthdaySorting':
        return (IsarNative.jsObjectGet(jsObj, 'birthdaySorting') ??
            double.negativeInfinity) as P;
      case 'createdAt':
        return (IsarNative.jsObjectGet(jsObj, 'createdAt') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'createdAt'),
                    isUtc: true)
                .toLocal()
            : null) as P;
      case 'deleted':
        return (IsarNative.jsObjectGet(jsObj, 'deleted') ?? false) as P;
      case 'description':
        return (IsarNative.jsObjectGet(jsObj, 'description')) as P;
      case 'id':
        return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
            as P;
      case 'idMirror':
        return (IsarNative.jsObjectGet(jsObj, 'idMirror') ??
            double.negativeInfinity) as P;
      case 'name':
        return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
      case 'phone':
        return (IsarNative.jsObjectGet(jsObj, 'phone')) as P;
      case 'phoneCode':
        return (IsarNative.jsObjectGet(jsObj, 'phoneCode')) as P;
      case 'updatedAt':
        return (IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'updatedAt'),
                    isUtc: true)
                .toLocal()
            : null) as P;
      case 'uuid':
        return (IsarNative.jsObjectGet(jsObj, 'uuid')) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Friend object) {
    object.notes.attach(
      id,
      isar.friends,
      isar.getCollection<Note>('Note'),
      'notes',
      false,
    );
    object.photo.attach(
      id,
      isar.friends,
      isar.getCollection<Photo>('Photo'),
      'photo',
      false,
    );
    object.owner.attach(
      id,
      isar.friends,
      isar.getCollection<User>('User'),
      'owner',
      true,
    );
  }
}

class _FriendNativeAdapter extends IsarNativeTypeAdapter<Friend> {
  const _FriendNativeAdapter();

  @override
  void serialize(IsarCollection<Friend> collection, IsarRawObject rawObj,
      Friend object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.birthday;
    final _birthday = value0;
    final value1 = object.birthdaySorting;
    final _birthdaySorting = value1;
    final value2 = object.createdAt;
    final _createdAt = value2;
    final value3 = object.deleted;
    final _deleted = value3;
    final value4 = object.description;
    IsarUint8List? _description;
    if (value4 != null) {
      _description = IsarBinaryWriter.utf8Encoder.convert(value4);
    }
    dynamicSize += (_description?.length ?? 0) as int;
    final value5 = object.idMirror;
    final _idMirror = value5;
    final value6 = object.name;
    final _name = IsarBinaryWriter.utf8Encoder.convert(value6);
    dynamicSize += (_name.length) as int;
    final value7 = object.phone;
    final _phone = value7;
    final value8 = object.phoneCode;
    IsarUint8List? _phoneCode;
    if (value8 != null) {
      _phoneCode = IsarBinaryWriter.utf8Encoder.convert(value8);
    }
    dynamicSize += (_phoneCode?.length ?? 0) as int;
    final value9 = object.updatedAt;
    final _updatedAt = value9;
    final value10 = object.uuid;
    IsarUint8List? _uuid;
    if (value10 != null) {
      _uuid = IsarBinaryWriter.utf8Encoder.convert(value10);
    }
    dynamicSize += (_uuid?.length ?? 0) as int;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeDateTime(offsets[0], _birthday);
    writer.writeLong(offsets[1], _birthdaySorting);
    writer.writeDateTime(offsets[2], _createdAt);
    writer.writeBool(offsets[3], _deleted);
    writer.writeBytes(offsets[4], _description);
    writer.writeLong(offsets[5], _idMirror);
    writer.writeBytes(offsets[6], _name);
    writer.writeLong(offsets[7], _phone);
    writer.writeBytes(offsets[8], _phoneCode);
    writer.writeDateTime(offsets[9], _updatedAt);
    writer.writeBytes(offsets[10], _uuid);
  }

  @override
  Friend deserialize(IsarCollection<Friend> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = Friend(
      birthday: reader.readDateTime(offsets[0]),
      createdAt: reader.readDateTimeOrNull(offsets[2]),
      deleted: reader.readBool(offsets[3]),
      description: reader.readStringOrNull(offsets[4]),
      id: id,
      name: reader.readString(offsets[6]),
      phone: reader.readLongOrNull(offsets[7]),
      phoneCode: reader.readStringOrNull(offsets[8]),
      updatedAt: reader.readDateTimeOrNull(offsets[9]),
      uuid: reader.readStringOrNull(offsets[10]),
    );
    attachLinks(collection.isar, id, object);
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readDateTime(offset)) as P;
      case 1:
        return (reader.readLong(offset)) as P;
      case 2:
        return (reader.readDateTimeOrNull(offset)) as P;
      case 3:
        return (reader.readBool(offset)) as P;
      case 4:
        return (reader.readStringOrNull(offset)) as P;
      case 5:
        return (reader.readLong(offset)) as P;
      case 6:
        return (reader.readString(offset)) as P;
      case 7:
        return (reader.readLongOrNull(offset)) as P;
      case 8:
        return (reader.readStringOrNull(offset)) as P;
      case 9:
        return (reader.readDateTimeOrNull(offset)) as P;
      case 10:
        return (reader.readStringOrNull(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, Friend object) {
    object.notes.attach(
      id,
      isar.friends,
      isar.getCollection<Note>('Note'),
      'notes',
      false,
    );
    object.photo.attach(
      id,
      isar.friends,
      isar.getCollection<Photo>('Photo'),
      'photo',
      false,
    );
    object.owner.attach(
      id,
      isar.friends,
      isar.getCollection<User>('User'),
      'owner',
      true,
    );
  }
}

extension FriendQueryWhereSort on QueryBuilder<Friend, Friend, QWhere> {
  QueryBuilder<Friend, Friend, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<Friend, Friend, QAfterWhere> anyBirthdaySorting() {
    return addWhereClauseInternal(
        const WhereClause(indexName: 'birthdaySorting'));
  }
}

extension FriendQueryWhere on QueryBuilder<Friend, Friend, QWhereClause> {
  QueryBuilder<Friend, Friend, QAfterWhereClause> idEqualTo(int id) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: true,
      upper: [id],
      includeUpper: true,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterWhereClause> idNotEqualTo(int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [id],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [id],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Friend, Friend, QAfterWhereClause> idGreaterThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [id],
      includeLower: include,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterWhereClause> idLessThan(
    int id, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [id],
      includeUpper: include,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerId],
      includeLower: includeLower,
      upper: [upperId],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterWhereClause> birthdaySortingEqualTo(
      int birthdaySorting) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'birthdaySorting',
      lower: [birthdaySorting],
      includeLower: true,
      upper: [birthdaySorting],
      includeUpper: true,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterWhereClause> birthdaySortingNotEqualTo(
      int birthdaySorting) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'birthdaySorting',
        upper: [birthdaySorting],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'birthdaySorting',
        lower: [birthdaySorting],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'birthdaySorting',
        lower: [birthdaySorting],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'birthdaySorting',
        upper: [birthdaySorting],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<Friend, Friend, QAfterWhereClause> birthdaySortingGreaterThan(
    int birthdaySorting, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'birthdaySorting',
      lower: [birthdaySorting],
      includeLower: include,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterWhereClause> birthdaySortingLessThan(
    int birthdaySorting, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'birthdaySorting',
      upper: [birthdaySorting],
      includeUpper: include,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterWhereClause> birthdaySortingBetween(
    int lowerBirthdaySorting,
    int upperBirthdaySorting, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'birthdaySorting',
      lower: [lowerBirthdaySorting],
      includeLower: includeLower,
      upper: [upperBirthdaySorting],
      includeUpper: includeUpper,
    ));
  }
}

extension FriendQueryFilter on QueryBuilder<Friend, Friend, QFilterCondition> {
  QueryBuilder<Friend, Friend, QAfterFilterCondition> birthdayEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'birthday',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> birthdayGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'birthday',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> birthdayLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'birthday',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> birthdayBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'birthday',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> birthdaySortingEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'birthdaySorting',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition>
      birthdaySortingGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'birthdaySorting',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> birthdaySortingLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'birthdaySorting',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> birthdaySortingBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'birthdaySorting',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> createdAtIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'createdAt',
      value: null,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> createdAtEqualTo(
      DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> createdAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> createdAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> createdAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createdAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> deletedEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'deleted',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> descriptionIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'description',
      value: null,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> descriptionGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> descriptionLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> descriptionBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'description',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'description',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'description',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> idMirrorEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'idMirror',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> idMirrorGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'idMirror',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> idMirrorLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'idMirror',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> idMirrorBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'idMirror',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> phoneIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'phone',
      value: null,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> phoneEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'phone',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> phoneGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'phone',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> phoneLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'phone',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> phoneBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'phone',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> phoneCodeIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'phoneCode',
      value: null,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> phoneCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'phoneCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> phoneCodeGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'phoneCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> phoneCodeLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'phoneCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> phoneCodeBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'phoneCode',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> phoneCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'phoneCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> phoneCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'phoneCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> phoneCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'phoneCode',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> phoneCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'phoneCode',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> updatedAtIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'updatedAt',
      value: null,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> updatedAtEqualTo(
      DateTime? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> updatedAtGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> updatedAtLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> updatedAtBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updatedAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> uuidIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'uuid',
      value: null,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> uuidEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'uuid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> uuidGreaterThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'uuid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> uuidLessThan(
    String? value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'uuid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> uuidBetween(
    String? lower,
    String? upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'uuid',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> uuidStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'uuid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> uuidEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'uuid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> uuidContains(String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'uuid',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> uuidMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'uuid',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension FriendQueryLinks on QueryBuilder<Friend, Friend, QFilterCondition> {
  QueryBuilder<Friend, Friend, QAfterFilterCondition> notes(
      FilterQuery<Note> q) {
    return linkInternal(
      isar.notes,
      q,
      'notes',
    );
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> photo(
      FilterQuery<Photo> q) {
    return linkInternal(
      isar.photos,
      q,
      'photo',
    );
  }

  QueryBuilder<Friend, Friend, QAfterFilterCondition> owner(
      FilterQuery<User> q) {
    return linkInternal(
      isar.users,
      q,
      'owner',
    );
  }
}

extension FriendQueryWhereSortBy on QueryBuilder<Friend, Friend, QSortBy> {
  QueryBuilder<Friend, Friend, QAfterSortBy> sortByBirthday() {
    return addSortByInternal('birthday', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByBirthdayDesc() {
    return addSortByInternal('birthday', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByBirthdaySorting() {
    return addSortByInternal('birthdaySorting', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByBirthdaySortingDesc() {
    return addSortByInternal('birthdaySorting', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByDeleted() {
    return addSortByInternal('deleted', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByDeletedDesc() {
    return addSortByInternal('deleted', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByIdMirror() {
    return addSortByInternal('idMirror', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByIdMirrorDesc() {
    return addSortByInternal('idMirror', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByPhone() {
    return addSortByInternal('phone', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByPhoneDesc() {
    return addSortByInternal('phone', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByPhoneCode() {
    return addSortByInternal('phoneCode', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByPhoneCodeDesc() {
    return addSortByInternal('phoneCode', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByUuid() {
    return addSortByInternal('uuid', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> sortByUuidDesc() {
    return addSortByInternal('uuid', Sort.desc);
  }
}

extension FriendQueryWhereSortThenBy
    on QueryBuilder<Friend, Friend, QSortThenBy> {
  QueryBuilder<Friend, Friend, QAfterSortBy> thenByBirthday() {
    return addSortByInternal('birthday', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByBirthdayDesc() {
    return addSortByInternal('birthday', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByBirthdaySorting() {
    return addSortByInternal('birthdaySorting', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByBirthdaySortingDesc() {
    return addSortByInternal('birthdaySorting', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByDeleted() {
    return addSortByInternal('deleted', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByDeletedDesc() {
    return addSortByInternal('deleted', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByDescription() {
    return addSortByInternal('description', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByDescriptionDesc() {
    return addSortByInternal('description', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByIdMirror() {
    return addSortByInternal('idMirror', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByIdMirrorDesc() {
    return addSortByInternal('idMirror', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByPhone() {
    return addSortByInternal('phone', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByPhoneDesc() {
    return addSortByInternal('phone', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByPhoneCode() {
    return addSortByInternal('phoneCode', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByPhoneCodeDesc() {
    return addSortByInternal('phoneCode', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByUuid() {
    return addSortByInternal('uuid', Sort.asc);
  }

  QueryBuilder<Friend, Friend, QAfterSortBy> thenByUuidDesc() {
    return addSortByInternal('uuid', Sort.desc);
  }
}

extension FriendQueryWhereDistinct on QueryBuilder<Friend, Friend, QDistinct> {
  QueryBuilder<Friend, Friend, QDistinct> distinctByBirthday() {
    return addDistinctByInternal('birthday');
  }

  QueryBuilder<Friend, Friend, QDistinct> distinctByBirthdaySorting() {
    return addDistinctByInternal('birthdaySorting');
  }

  QueryBuilder<Friend, Friend, QDistinct> distinctByCreatedAt() {
    return addDistinctByInternal('createdAt');
  }

  QueryBuilder<Friend, Friend, QDistinct> distinctByDeleted() {
    return addDistinctByInternal('deleted');
  }

  QueryBuilder<Friend, Friend, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('description', caseSensitive: caseSensitive);
  }

  QueryBuilder<Friend, Friend, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Friend, Friend, QDistinct> distinctByIdMirror() {
    return addDistinctByInternal('idMirror');
  }

  QueryBuilder<Friend, Friend, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<Friend, Friend, QDistinct> distinctByPhone() {
    return addDistinctByInternal('phone');
  }

  QueryBuilder<Friend, Friend, QDistinct> distinctByPhoneCode(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('phoneCode', caseSensitive: caseSensitive);
  }

  QueryBuilder<Friend, Friend, QDistinct> distinctByUpdatedAt() {
    return addDistinctByInternal('updatedAt');
  }

  QueryBuilder<Friend, Friend, QDistinct> distinctByUuid(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('uuid', caseSensitive: caseSensitive);
  }
}

extension FriendQueryProperty on QueryBuilder<Friend, Friend, QQueryProperty> {
  QueryBuilder<Friend, DateTime, QQueryOperations> birthdayProperty() {
    return addPropertyNameInternal('birthday');
  }

  QueryBuilder<Friend, int, QQueryOperations> birthdaySortingProperty() {
    return addPropertyNameInternal('birthdaySorting');
  }

  QueryBuilder<Friend, DateTime?, QQueryOperations> createdAtProperty() {
    return addPropertyNameInternal('createdAt');
  }

  QueryBuilder<Friend, bool, QQueryOperations> deletedProperty() {
    return addPropertyNameInternal('deleted');
  }

  QueryBuilder<Friend, String?, QQueryOperations> descriptionProperty() {
    return addPropertyNameInternal('description');
  }

  QueryBuilder<Friend, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Friend, int, QQueryOperations> idMirrorProperty() {
    return addPropertyNameInternal('idMirror');
  }

  QueryBuilder<Friend, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<Friend, int?, QQueryOperations> phoneProperty() {
    return addPropertyNameInternal('phone');
  }

  QueryBuilder<Friend, String?, QQueryOperations> phoneCodeProperty() {
    return addPropertyNameInternal('phoneCode');
  }

  QueryBuilder<Friend, DateTime?, QQueryOperations> updatedAtProperty() {
    return addPropertyNameInternal('updatedAt');
  }

  QueryBuilder<Friend, String?, QQueryOperations> uuidProperty() {
    return addPropertyNameInternal('uuid');
  }
}

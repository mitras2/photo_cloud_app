// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetUserModelCollection on Isar {
  IsarCollection<UserModel> get userModels {
    return getCollection('UserModel');
  }
}

final UserModelSchema = CollectionSchema(
  name: 'UserModel',
  schema:
      '{"name":"UserModel","idName":"iid","properties":[{"name":"deleted","type":"Bool"},{"name":"id","type":"String"},{"name":"lastLocalChange","type":"Long"},{"name":"lastServerState","type":"Long"},{"name":"username","type":"String"}],"indexes":[{"name":"id","unique":true,"properties":[{"name":"id","type":"Hash","caseSensitive":false}]}],"links":[]}',
  nativeAdapter: const _UserModelNativeAdapter(),
  webAdapter: const _UserModelWebAdapter(),
  idName: 'iid',
  propertyIds: {
    'deleted': 0,
    'id': 1,
    'lastLocalChange': 2,
    'lastServerState': 3,
    'username': 4
  },
  listProperties: {},
  indexIds: {'id': 0},
  indexTypes: {
    'id': [
      NativeIndexType.stringHashCIS,
    ]
  },
  linkIds: {},
  backlinkIds: {},
  linkedCollections: [],
  getId: (obj) {
    if (obj.iid == Isar.autoIncrement) {
      return null;
    } else {
      return obj.iid;
    }
  },
  setId: (obj, id) => obj.iid = id,
  getLinks: (obj) => [],
  version: 2,
);

const _userModelUUIDConverter = UUIDConverter();

class _UserModelWebAdapter extends IsarWebTypeAdapter<UserModel> {
  const _UserModelWebAdapter();

  @override
  Object serialize(IsarCollection<UserModel> collection, UserModel object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'deleted', object.deleted);
    IsarNative.jsObjectSet(
        jsObj, 'id', _userModelUUIDConverter.toIsar(object.id));
    IsarNative.jsObjectSet(jsObj, 'iid', object.iid);
    IsarNative.jsObjectSet(jsObj, 'lastLocalChange',
        object.lastLocalChange.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'lastServerState',
        object.lastServerState.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'username', object.username);
    return jsObj;
  }

  @override
  UserModel deserialize(IsarCollection<UserModel> collection, dynamic jsObj) {
    final object = UserModel();
    object.deleted = IsarNative.jsObjectGet(jsObj, 'deleted') ?? false;
    object.id = _userModelUUIDConverter
        .fromIsar(IsarNative.jsObjectGet(jsObj, 'id') ?? '');
    object.iid = IsarNative.jsObjectGet(jsObj, 'iid');
    object.lastLocalChange =
        IsarNative.jsObjectGet(jsObj, 'lastLocalChange') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'lastLocalChange'),
                    isUtc: true)
                .toLocal()
            : DateTime.fromMillisecondsSinceEpoch(0);
    object.lastServerState =
        IsarNative.jsObjectGet(jsObj, 'lastServerState') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'lastServerState'),
                    isUtc: true)
                .toLocal()
            : DateTime.fromMillisecondsSinceEpoch(0);
    object.username = IsarNative.jsObjectGet(jsObj, 'username') ?? '';
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'deleted':
        return (IsarNative.jsObjectGet(jsObj, 'deleted') ?? false) as P;
      case 'id':
        return (_userModelUUIDConverter
            .fromIsar(IsarNative.jsObjectGet(jsObj, 'id') ?? '')) as P;
      case 'iid':
        return (IsarNative.jsObjectGet(jsObj, 'iid')) as P;
      case 'lastLocalChange':
        return (IsarNative.jsObjectGet(jsObj, 'lastLocalChange') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'lastLocalChange'),
                    isUtc: true)
                .toLocal()
            : DateTime.fromMillisecondsSinceEpoch(0)) as P;
      case 'lastServerState':
        return (IsarNative.jsObjectGet(jsObj, 'lastServerState') != null
            ? DateTime.fromMillisecondsSinceEpoch(
                    IsarNative.jsObjectGet(jsObj, 'lastServerState'),
                    isUtc: true)
                .toLocal()
            : DateTime.fromMillisecondsSinceEpoch(0)) as P;
      case 'username':
        return (IsarNative.jsObjectGet(jsObj, 'username') ?? '') as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, UserModel object) {}
}

class _UserModelNativeAdapter extends IsarNativeTypeAdapter<UserModel> {
  const _UserModelNativeAdapter();

  @override
  void serialize(IsarCollection<UserModel> collection, IsarRawObject rawObj,
      UserModel object, int staticSize, List<int> offsets, AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.deleted;
    final _deleted = value0;
    final value1 = _userModelUUIDConverter.toIsar(object.id);
    final _id = IsarBinaryWriter.utf8Encoder.convert(value1);
    dynamicSize += (_id.length) as int;
    final value2 = object.lastLocalChange;
    final _lastLocalChange = value2;
    final value3 = object.lastServerState;
    final _lastServerState = value3;
    final value4 = object.username;
    final _username = IsarBinaryWriter.utf8Encoder.convert(value4);
    dynamicSize += (_username.length) as int;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBool(offsets[0], _deleted);
    writer.writeBytes(offsets[1], _id);
    writer.writeDateTime(offsets[2], _lastLocalChange);
    writer.writeDateTime(offsets[3], _lastServerState);
    writer.writeBytes(offsets[4], _username);
  }

  @override
  UserModel deserialize(IsarCollection<UserModel> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = UserModel();
    object.deleted = reader.readBool(offsets[0]);
    object.id = _userModelUUIDConverter.fromIsar(reader.readString(offsets[1]));
    object.iid = id;
    object.lastLocalChange = reader.readDateTime(offsets[2]);
    object.lastServerState = reader.readDateTime(offsets[3]);
    object.username = reader.readString(offsets[4]);
    return object;
  }

  @override
  P deserializeProperty<P>(
      int id, IsarBinaryReader reader, int propertyIndex, int offset) {
    switch (propertyIndex) {
      case -1:
        return id as P;
      case 0:
        return (reader.readBool(offset)) as P;
      case 1:
        return (_userModelUUIDConverter.fromIsar(reader.readString(offset)))
            as P;
      case 2:
        return (reader.readDateTime(offset)) as P;
      case 3:
        return (reader.readDateTime(offset)) as P;
      case 4:
        return (reader.readString(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, UserModel object) {}
}

extension UserModelByIndex on IsarCollection<UserModel> {
  Future<UserModel?> getById(UuidValue id) {
    return getByIndex('id', [id]);
  }

  UserModel? getByIdSync(UuidValue id) {
    return getByIndexSync('id', [id]);
  }

  Future<bool> deleteById(UuidValue id) {
    return deleteByIndex('id', [id]);
  }

  bool deleteByIdSync(UuidValue id) {
    return deleteByIndexSync('id', [id]);
  }

  Future<List<UserModel?>> getAllById(List<UuidValue> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex('id', values);
  }

  List<UserModel?> getAllByIdSync(List<UuidValue> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndexSync('id', values);
  }

  Future<int> deleteAllById(List<UuidValue> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndex('id', values);
  }

  int deleteAllByIdSync(List<UuidValue> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return deleteAllByIndexSync('id', values);
  }
}

extension UserModelQueryWhereSort
    on QueryBuilder<UserModel, UserModel, QWhere> {
  QueryBuilder<UserModel, UserModel, QAfterWhere> anyIid() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<UserModel, UserModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: 'id'));
  }
}

extension UserModelQueryWhere
    on QueryBuilder<UserModel, UserModel, QWhereClause> {
  QueryBuilder<UserModel, UserModel, QAfterWhereClause> iidEqualTo(int? iid) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [iid],
      includeLower: true,
      upper: [iid],
      includeUpper: true,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterWhereClause> iidNotEqualTo(
      int? iid) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [iid],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [iid],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: null,
        lower: [iid],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: null,
        upper: [iid],
        includeUpper: false,
      ));
    }
  }

  QueryBuilder<UserModel, UserModel, QAfterWhereClause> iidGreaterThan(
    int? iid, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [iid],
      includeLower: include,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterWhereClause> iidLessThan(
    int? iid, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [iid],
      includeUpper: include,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterWhereClause> iidBetween(
    int? lowerIid,
    int? upperIid, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [lowerIid],
      includeLower: includeLower,
      upper: [upperIid],
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterWhereClause> idEqualTo(
      UuidValue id) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'id',
      lower: [_userModelUUIDConverter.toIsar(id)],
      includeLower: true,
      upper: [_userModelUUIDConverter.toIsar(id)],
      includeUpper: true,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterWhereClause> idNotEqualTo(
      UuidValue id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'id',
        upper: [_userModelUUIDConverter.toIsar(id)],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'id',
        lower: [_userModelUUIDConverter.toIsar(id)],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'id',
        lower: [_userModelUUIDConverter.toIsar(id)],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'id',
        upper: [_userModelUUIDConverter.toIsar(id)],
        includeUpper: false,
      ));
    }
  }
}

extension UserModelQueryFilter
    on QueryBuilder<UserModel, UserModel, QFilterCondition> {
  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> deletedEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'deleted',
      value: value,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> idEqualTo(
    UuidValue value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: _userModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> idGreaterThan(
    UuidValue value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: _userModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> idLessThan(
    UuidValue value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: _userModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> idBetween(
    UuidValue lower,
    UuidValue upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: _userModelUUIDConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _userModelUUIDConverter.toIsar(upper),
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> idStartsWith(
    UuidValue value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'id',
      value: _userModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> idEndsWith(
    UuidValue value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'id',
      value: _userModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> idContains(
      UuidValue value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'id',
      value: _userModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'id',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> iidIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'iid',
      value: null,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> iidEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'iid',
      value: value,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> iidGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'iid',
      value: value,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> iidLessThan(
    int? value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'iid',
      value: value,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> iidBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'iid',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition>
      lastLocalChangeEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastLocalChange',
      value: value,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition>
      lastLocalChangeGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastLocalChange',
      value: value,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition>
      lastLocalChangeLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastLocalChange',
      value: value,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition>
      lastLocalChangeBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastLocalChange',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition>
      lastServerStateEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastServerState',
      value: value,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition>
      lastServerStateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lastServerState',
      value: value,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition>
      lastServerStateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lastServerState',
      value: value,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition>
      lastServerStateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lastServerState',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> usernameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> usernameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> usernameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> usernameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'username',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> usernameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'username',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<UserModel, UserModel, QAfterFilterCondition> usernameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'username',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }
}

extension UserModelQueryLinks
    on QueryBuilder<UserModel, UserModel, QFilterCondition> {}

extension UserModelQueryWhereSortBy
    on QueryBuilder<UserModel, UserModel, QSortBy> {
  QueryBuilder<UserModel, UserModel, QAfterSortBy> sortByDeleted() {
    return addSortByInternal('deleted', Sort.asc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> sortByDeletedDesc() {
    return addSortByInternal('deleted', Sort.desc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> sortByIid() {
    return addSortByInternal('iid', Sort.asc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> sortByIidDesc() {
    return addSortByInternal('iid', Sort.desc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> sortByLastLocalChange() {
    return addSortByInternal('lastLocalChange', Sort.asc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> sortByLastLocalChangeDesc() {
    return addSortByInternal('lastLocalChange', Sort.desc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> sortByLastServerState() {
    return addSortByInternal('lastServerState', Sort.asc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> sortByLastServerStateDesc() {
    return addSortByInternal('lastServerState', Sort.desc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> sortByUsername() {
    return addSortByInternal('username', Sort.asc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> sortByUsernameDesc() {
    return addSortByInternal('username', Sort.desc);
  }
}

extension UserModelQueryWhereSortThenBy
    on QueryBuilder<UserModel, UserModel, QSortThenBy> {
  QueryBuilder<UserModel, UserModel, QAfterSortBy> thenByDeleted() {
    return addSortByInternal('deleted', Sort.asc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> thenByDeletedDesc() {
    return addSortByInternal('deleted', Sort.desc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> thenByIid() {
    return addSortByInternal('iid', Sort.asc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> thenByIidDesc() {
    return addSortByInternal('iid', Sort.desc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> thenByLastLocalChange() {
    return addSortByInternal('lastLocalChange', Sort.asc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> thenByLastLocalChangeDesc() {
    return addSortByInternal('lastLocalChange', Sort.desc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> thenByLastServerState() {
    return addSortByInternal('lastServerState', Sort.asc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> thenByLastServerStateDesc() {
    return addSortByInternal('lastServerState', Sort.desc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> thenByUsername() {
    return addSortByInternal('username', Sort.asc);
  }

  QueryBuilder<UserModel, UserModel, QAfterSortBy> thenByUsernameDesc() {
    return addSortByInternal('username', Sort.desc);
  }
}

extension UserModelQueryWhereDistinct
    on QueryBuilder<UserModel, UserModel, QDistinct> {
  QueryBuilder<UserModel, UserModel, QDistinct> distinctByDeleted() {
    return addDistinctByInternal('deleted');
  }

  QueryBuilder<UserModel, UserModel, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('id', caseSensitive: caseSensitive);
  }

  QueryBuilder<UserModel, UserModel, QDistinct> distinctByIid() {
    return addDistinctByInternal('iid');
  }

  QueryBuilder<UserModel, UserModel, QDistinct> distinctByLastLocalChange() {
    return addDistinctByInternal('lastLocalChange');
  }

  QueryBuilder<UserModel, UserModel, QDistinct> distinctByLastServerState() {
    return addDistinctByInternal('lastServerState');
  }

  QueryBuilder<UserModel, UserModel, QDistinct> distinctByUsername(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('username', caseSensitive: caseSensitive);
  }
}

extension UserModelQueryProperty
    on QueryBuilder<UserModel, UserModel, QQueryProperty> {
  QueryBuilder<UserModel, bool, QQueryOperations> deletedProperty() {
    return addPropertyNameInternal('deleted');
  }

  QueryBuilder<UserModel, UuidValue, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<UserModel, int?, QQueryOperations> iidProperty() {
    return addPropertyNameInternal('iid');
  }

  QueryBuilder<UserModel, DateTime, QQueryOperations>
      lastLocalChangeProperty() {
    return addPropertyNameInternal('lastLocalChange');
  }

  QueryBuilder<UserModel, DateTime, QQueryOperations>
      lastServerStateProperty() {
    return addPropertyNameInternal('lastServerState');
  }

  QueryBuilder<UserModel, String, QQueryOperations> usernameProperty() {
    return addPropertyNameInternal('username');
  }
}

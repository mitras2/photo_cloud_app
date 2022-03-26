// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetStoreModelCollection on Isar {
  IsarCollection<StoreModel> get storeModels {
    return getCollection('StoreModel');
  }
}

final StoreModelSchema = CollectionSchema(
  name: 'StoreModel',
  schema:
      '{"name":"StoreModel","idName":"iid","properties":[{"name":"admin","type":"Bool"},{"name":"deleted","type":"Bool"},{"name":"id","type":"String"},{"name":"lastLocalChange","type":"Long"},{"name":"lastServerState","type":"Long"},{"name":"read","type":"Bool"},{"name":"storeName","type":"String"},{"name":"write","type":"Bool"}],"indexes":[{"name":"id","unique":true,"properties":[{"name":"id","type":"Hash","caseSensitive":false}]}],"links":[{"name":"permissionsList","target":"PermissionsUserModel"},{"name":"storeCreator","target":"UserModel"},{"name":"storeOwner","target":"UserModel"}]}',
  nativeAdapter: const _StoreModelNativeAdapter(),
  webAdapter: const _StoreModelWebAdapter(),
  idName: 'iid',
  propertyIds: {
    'admin': 0,
    'deleted': 1,
    'id': 2,
    'lastLocalChange': 3,
    'lastServerState': 4,
    'read': 5,
    'storeName': 6,
    'write': 7
  },
  listProperties: {},
  indexIds: {'id': 0},
  indexTypes: {
    'id': [
      NativeIndexType.stringHashCIS,
    ]
  },
  linkIds: {'permissionsList': 0, 'storeCreator': 1, 'storeOwner': 2},
  backlinkIds: {},
  linkedCollections: ['PermissionsUserModel', 'UserModel'],
  getId: (obj) {
    if (obj.iid == Isar.autoIncrement) {
      return null;
    } else {
      return obj.iid;
    }
  },
  setId: (obj, id) => obj.iid = id,
  getLinks: (obj) => [obj.permissionsList, obj.storeCreator, obj.storeOwner],
  version: 2,
);

const _storeModelUUIDConverter = UUIDConverter();

class _StoreModelWebAdapter extends IsarWebTypeAdapter<StoreModel> {
  const _StoreModelWebAdapter();

  @override
  Object serialize(IsarCollection<StoreModel> collection, StoreModel object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'admin', object.admin);
    IsarNative.jsObjectSet(jsObj, 'deleted', object.deleted);
    IsarNative.jsObjectSet(
        jsObj, 'id', _storeModelUUIDConverter.toIsar(object.id));
    IsarNative.jsObjectSet(jsObj, 'iid', object.iid);
    IsarNative.jsObjectSet(jsObj, 'lastLocalChange',
        object.lastLocalChange.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'lastServerState',
        object.lastServerState.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'read', object.read);
    IsarNative.jsObjectSet(jsObj, 'storeName', object.storeName);
    IsarNative.jsObjectSet(jsObj, 'write', object.write);
    return jsObj;
  }

  @override
  StoreModel deserialize(IsarCollection<StoreModel> collection, dynamic jsObj) {
    final object = StoreModel();
    object.admin = IsarNative.jsObjectGet(jsObj, 'admin') ?? false;
    object.deleted = IsarNative.jsObjectGet(jsObj, 'deleted') ?? false;
    object.id = _storeModelUUIDConverter
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
    object.read = IsarNative.jsObjectGet(jsObj, 'read') ?? false;
    object.storeName = IsarNative.jsObjectGet(jsObj, 'storeName') ?? '';
    object.write = IsarNative.jsObjectGet(jsObj, 'write') ?? false;
    attachLinks(collection.isar, IsarNative.jsObjectGet(jsObj, 'iid'), object);
    return object;
  }

  @override
  P deserializeProperty<P>(Object jsObj, String propertyName) {
    switch (propertyName) {
      case 'admin':
        return (IsarNative.jsObjectGet(jsObj, 'admin') ?? false) as P;
      case 'deleted':
        return (IsarNative.jsObjectGet(jsObj, 'deleted') ?? false) as P;
      case 'id':
        return (_storeModelUUIDConverter
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
      case 'read':
        return (IsarNative.jsObjectGet(jsObj, 'read') ?? false) as P;
      case 'storeName':
        return (IsarNative.jsObjectGet(jsObj, 'storeName') ?? '') as P;
      case 'write':
        return (IsarNative.jsObjectGet(jsObj, 'write') ?? false) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, StoreModel object) {
    object.permissionsList.attach(
      id,
      isar.storeModels,
      isar.getCollection<PermissionsUserModel>('PermissionsUserModel'),
      'permissionsList',
      false,
    );
    object.storeCreator.attach(
      id,
      isar.storeModels,
      isar.getCollection<UserModel>('UserModel'),
      'storeCreator',
      false,
    );
    object.storeOwner.attach(
      id,
      isar.storeModels,
      isar.getCollection<UserModel>('UserModel'),
      'storeOwner',
      false,
    );
  }
}

class _StoreModelNativeAdapter extends IsarNativeTypeAdapter<StoreModel> {
  const _StoreModelNativeAdapter();

  @override
  void serialize(
      IsarCollection<StoreModel> collection,
      IsarRawObject rawObj,
      StoreModel object,
      int staticSize,
      List<int> offsets,
      AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.admin;
    final _admin = value0;
    final value1 = object.deleted;
    final _deleted = value1;
    final value2 = _storeModelUUIDConverter.toIsar(object.id);
    final _id = IsarBinaryWriter.utf8Encoder.convert(value2);
    dynamicSize += (_id.length) as int;
    final value3 = object.lastLocalChange;
    final _lastLocalChange = value3;
    final value4 = object.lastServerState;
    final _lastServerState = value4;
    final value5 = object.read;
    final _read = value5;
    final value6 = object.storeName;
    final _storeName = IsarBinaryWriter.utf8Encoder.convert(value6);
    dynamicSize += (_storeName.length) as int;
    final value7 = object.write;
    final _write = value7;
    final size = staticSize + dynamicSize;

    rawObj.buffer = alloc(size);
    rawObj.buffer_length = size;
    final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
    final writer = IsarBinaryWriter(buffer, staticSize);
    writer.writeBool(offsets[0], _admin);
    writer.writeBool(offsets[1], _deleted);
    writer.writeBytes(offsets[2], _id);
    writer.writeDateTime(offsets[3], _lastLocalChange);
    writer.writeDateTime(offsets[4], _lastServerState);
    writer.writeBool(offsets[5], _read);
    writer.writeBytes(offsets[6], _storeName);
    writer.writeBool(offsets[7], _write);
  }

  @override
  StoreModel deserialize(IsarCollection<StoreModel> collection, int id,
      IsarBinaryReader reader, List<int> offsets) {
    final object = StoreModel();
    object.admin = reader.readBool(offsets[0]);
    object.deleted = reader.readBool(offsets[1]);
    object.id =
        _storeModelUUIDConverter.fromIsar(reader.readString(offsets[2]));
    object.iid = id;
    object.lastLocalChange = reader.readDateTime(offsets[3]);
    object.lastServerState = reader.readDateTime(offsets[4]);
    object.read = reader.readBool(offsets[5]);
    object.storeName = reader.readString(offsets[6]);
    object.write = reader.readBool(offsets[7]);
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
        return (reader.readBool(offset)) as P;
      case 1:
        return (reader.readBool(offset)) as P;
      case 2:
        return (_storeModelUUIDConverter.fromIsar(reader.readString(offset)))
            as P;
      case 3:
        return (reader.readDateTime(offset)) as P;
      case 4:
        return (reader.readDateTime(offset)) as P;
      case 5:
        return (reader.readBool(offset)) as P;
      case 6:
        return (reader.readString(offset)) as P;
      case 7:
        return (reader.readBool(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, StoreModel object) {
    object.permissionsList.attach(
      id,
      isar.storeModels,
      isar.getCollection<PermissionsUserModel>('PermissionsUserModel'),
      'permissionsList',
      false,
    );
    object.storeCreator.attach(
      id,
      isar.storeModels,
      isar.getCollection<UserModel>('UserModel'),
      'storeCreator',
      false,
    );
    object.storeOwner.attach(
      id,
      isar.storeModels,
      isar.getCollection<UserModel>('UserModel'),
      'storeOwner',
      false,
    );
  }
}

extension StoreModelByIndex on IsarCollection<StoreModel> {
  Future<StoreModel?> getById(UuidValue id) {
    return getByIndex('id', [id]);
  }

  StoreModel? getByIdSync(UuidValue id) {
    return getByIndexSync('id', [id]);
  }

  Future<bool> deleteById(UuidValue id) {
    return deleteByIndex('id', [id]);
  }

  bool deleteByIdSync(UuidValue id) {
    return deleteByIndexSync('id', [id]);
  }

  Future<List<StoreModel?>> getAllById(List<UuidValue> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex('id', values);
  }

  List<StoreModel?> getAllByIdSync(List<UuidValue> idValues) {
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

extension StoreModelQueryWhereSort
    on QueryBuilder<StoreModel, StoreModel, QWhere> {
  QueryBuilder<StoreModel, StoreModel, QAfterWhere> anyIid() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: 'id'));
  }
}

extension StoreModelQueryWhere
    on QueryBuilder<StoreModel, StoreModel, QWhereClause> {
  QueryBuilder<StoreModel, StoreModel, QAfterWhereClause> iidEqualTo(int? iid) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [iid],
      includeLower: true,
      upper: [iid],
      includeUpper: true,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterWhereClause> iidNotEqualTo(
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

  QueryBuilder<StoreModel, StoreModel, QAfterWhereClause> iidGreaterThan(
    int? iid, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [iid],
      includeLower: include,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterWhereClause> iidLessThan(
    int? iid, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [iid],
      includeUpper: include,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterWhereClause> iidBetween(
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

  QueryBuilder<StoreModel, StoreModel, QAfterWhereClause> idEqualTo(
      UuidValue id) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'id',
      lower: [_storeModelUUIDConverter.toIsar(id)],
      includeLower: true,
      upper: [_storeModelUUIDConverter.toIsar(id)],
      includeUpper: true,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterWhereClause> idNotEqualTo(
      UuidValue id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'id',
        upper: [_storeModelUUIDConverter.toIsar(id)],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'id',
        lower: [_storeModelUUIDConverter.toIsar(id)],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'id',
        lower: [_storeModelUUIDConverter.toIsar(id)],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'id',
        upper: [_storeModelUUIDConverter.toIsar(id)],
        includeUpper: false,
      ));
    }
  }
}

extension StoreModelQueryFilter
    on QueryBuilder<StoreModel, StoreModel, QFilterCondition> {
  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> adminEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'admin',
      value: value,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> deletedEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'deleted',
      value: value,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> idEqualTo(
    UuidValue value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: _storeModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> idGreaterThan(
    UuidValue value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: _storeModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> idLessThan(
    UuidValue value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: _storeModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> idBetween(
    UuidValue lower,
    UuidValue upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: _storeModelUUIDConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _storeModelUUIDConverter.toIsar(upper),
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> idStartsWith(
    UuidValue value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'id',
      value: _storeModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> idEndsWith(
    UuidValue value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'id',
      value: _storeModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> idContains(
      UuidValue value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'id',
      value: _storeModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'id',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> iidIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'iid',
      value: null,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> iidEqualTo(
      int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'iid',
      value: value,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> iidGreaterThan(
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

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> iidLessThan(
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

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> iidBetween(
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

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition>
      lastLocalChangeEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastLocalChange',
      value: value,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition>
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

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition>
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

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition>
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

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition>
      lastServerStateEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastServerState',
      value: value,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition>
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

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition>
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

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition>
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

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> readEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'read',
      value: value,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> storeNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'storeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition>
      storeNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'storeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> storeNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'storeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> storeNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'storeName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition>
      storeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'storeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> storeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'storeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> storeNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'storeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> storeNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'storeName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> writeEqualTo(
      bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'write',
      value: value,
    ));
  }
}

extension StoreModelQueryLinks
    on QueryBuilder<StoreModel, StoreModel, QFilterCondition> {
  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> permissionsList(
      FilterQuery<PermissionsUserModel> q) {
    return linkInternal(
      isar.permissionsUserModels,
      q,
      'permissionsList',
    );
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> storeCreator(
      FilterQuery<UserModel> q) {
    return linkInternal(
      isar.userModels,
      q,
      'storeCreator',
    );
  }

  QueryBuilder<StoreModel, StoreModel, QAfterFilterCondition> storeOwner(
      FilterQuery<UserModel> q) {
    return linkInternal(
      isar.userModels,
      q,
      'storeOwner',
    );
  }
}

extension StoreModelQueryWhereSortBy
    on QueryBuilder<StoreModel, StoreModel, QSortBy> {
  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByAdmin() {
    return addSortByInternal('admin', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByAdminDesc() {
    return addSortByInternal('admin', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByDeleted() {
    return addSortByInternal('deleted', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByDeletedDesc() {
    return addSortByInternal('deleted', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByIid() {
    return addSortByInternal('iid', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByIidDesc() {
    return addSortByInternal('iid', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByLastLocalChange() {
    return addSortByInternal('lastLocalChange', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy>
      sortByLastLocalChangeDesc() {
    return addSortByInternal('lastLocalChange', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByLastServerState() {
    return addSortByInternal('lastServerState', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy>
      sortByLastServerStateDesc() {
    return addSortByInternal('lastServerState', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByRead() {
    return addSortByInternal('read', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByReadDesc() {
    return addSortByInternal('read', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByStoreName() {
    return addSortByInternal('storeName', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByStoreNameDesc() {
    return addSortByInternal('storeName', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByWrite() {
    return addSortByInternal('write', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> sortByWriteDesc() {
    return addSortByInternal('write', Sort.desc);
  }
}

extension StoreModelQueryWhereSortThenBy
    on QueryBuilder<StoreModel, StoreModel, QSortThenBy> {
  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByAdmin() {
    return addSortByInternal('admin', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByAdminDesc() {
    return addSortByInternal('admin', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByDeleted() {
    return addSortByInternal('deleted', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByDeletedDesc() {
    return addSortByInternal('deleted', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByIid() {
    return addSortByInternal('iid', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByIidDesc() {
    return addSortByInternal('iid', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByLastLocalChange() {
    return addSortByInternal('lastLocalChange', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy>
      thenByLastLocalChangeDesc() {
    return addSortByInternal('lastLocalChange', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByLastServerState() {
    return addSortByInternal('lastServerState', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy>
      thenByLastServerStateDesc() {
    return addSortByInternal('lastServerState', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByRead() {
    return addSortByInternal('read', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByReadDesc() {
    return addSortByInternal('read', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByStoreName() {
    return addSortByInternal('storeName', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByStoreNameDesc() {
    return addSortByInternal('storeName', Sort.desc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByWrite() {
    return addSortByInternal('write', Sort.asc);
  }

  QueryBuilder<StoreModel, StoreModel, QAfterSortBy> thenByWriteDesc() {
    return addSortByInternal('write', Sort.desc);
  }
}

extension StoreModelQueryWhereDistinct
    on QueryBuilder<StoreModel, StoreModel, QDistinct> {
  QueryBuilder<StoreModel, StoreModel, QDistinct> distinctByAdmin() {
    return addDistinctByInternal('admin');
  }

  QueryBuilder<StoreModel, StoreModel, QDistinct> distinctByDeleted() {
    return addDistinctByInternal('deleted');
  }

  QueryBuilder<StoreModel, StoreModel, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('id', caseSensitive: caseSensitive);
  }

  QueryBuilder<StoreModel, StoreModel, QDistinct> distinctByIid() {
    return addDistinctByInternal('iid');
  }

  QueryBuilder<StoreModel, StoreModel, QDistinct> distinctByLastLocalChange() {
    return addDistinctByInternal('lastLocalChange');
  }

  QueryBuilder<StoreModel, StoreModel, QDistinct> distinctByLastServerState() {
    return addDistinctByInternal('lastServerState');
  }

  QueryBuilder<StoreModel, StoreModel, QDistinct> distinctByRead() {
    return addDistinctByInternal('read');
  }

  QueryBuilder<StoreModel, StoreModel, QDistinct> distinctByStoreName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('storeName', caseSensitive: caseSensitive);
  }

  QueryBuilder<StoreModel, StoreModel, QDistinct> distinctByWrite() {
    return addDistinctByInternal('write');
  }
}

extension StoreModelQueryProperty
    on QueryBuilder<StoreModel, StoreModel, QQueryProperty> {
  QueryBuilder<StoreModel, bool, QQueryOperations> adminProperty() {
    return addPropertyNameInternal('admin');
  }

  QueryBuilder<StoreModel, bool, QQueryOperations> deletedProperty() {
    return addPropertyNameInternal('deleted');
  }

  QueryBuilder<StoreModel, UuidValue, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<StoreModel, int?, QQueryOperations> iidProperty() {
    return addPropertyNameInternal('iid');
  }

  QueryBuilder<StoreModel, DateTime, QQueryOperations>
      lastLocalChangeProperty() {
    return addPropertyNameInternal('lastLocalChange');
  }

  QueryBuilder<StoreModel, DateTime, QQueryOperations>
      lastServerStateProperty() {
    return addPropertyNameInternal('lastServerState');
  }

  QueryBuilder<StoreModel, bool, QQueryOperations> readProperty() {
    return addPropertyNameInternal('read');
  }

  QueryBuilder<StoreModel, String, QQueryOperations> storeNameProperty() {
    return addPropertyNameInternal('storeName');
  }

  QueryBuilder<StoreModel, bool, QQueryOperations> writeProperty() {
    return addPropertyNameInternal('write');
  }
}

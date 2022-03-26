// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'permissions_user_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast

extension GetPermissionsUserModelCollection on Isar {
  IsarCollection<PermissionsUserModel> get permissionsUserModels {
    return getCollection('PermissionsUserModel');
  }
}

final PermissionsUserModelSchema = CollectionSchema(
  name: 'PermissionsUserModel',
  schema:
      '{"name":"PermissionsUserModel","idName":"iid","properties":[{"name":"admin","type":"Bool"},{"name":"deleted","type":"Bool"},{"name":"id","type":"String"},{"name":"lastLocalChange","type":"Long"},{"name":"lastServerState","type":"Long"},{"name":"permissionAccepted","type":"Bool"},{"name":"read","type":"Bool"},{"name":"write","type":"Bool"}],"indexes":[{"name":"id","unique":true,"properties":[{"name":"id","type":"Hash","caseSensitive":false}]}],"links":[{"name":"permissionCreator","target":"UserModel"},{"name":"user","target":"UserModel"}]}',
  nativeAdapter: const _PermissionsUserModelNativeAdapter(),
  webAdapter: const _PermissionsUserModelWebAdapter(),
  idName: 'iid',
  propertyIds: {
    'admin': 0,
    'deleted': 1,
    'id': 2,
    'lastLocalChange': 3,
    'lastServerState': 4,
    'permissionAccepted': 5,
    'read': 6,
    'write': 7
  },
  listProperties: {},
  indexIds: {'id': 0},
  indexTypes: {
    'id': [
      NativeIndexType.stringHashCIS,
    ]
  },
  linkIds: {'permissionCreator': 0, 'user': 1},
  backlinkIds: {},
  linkedCollections: ['UserModel'],
  getId: (obj) {
    if (obj.iid == Isar.autoIncrement) {
      return null;
    } else {
      return obj.iid;
    }
  },
  setId: (obj, id) => obj.iid = id,
  getLinks: (obj) => [obj.permissionCreator, obj.user],
  version: 2,
);

const _permissionsUserModelUUIDConverter = UUIDConverter();

class _PermissionsUserModelWebAdapter
    extends IsarWebTypeAdapter<PermissionsUserModel> {
  const _PermissionsUserModelWebAdapter();

  @override
  Object serialize(IsarCollection<PermissionsUserModel> collection,
      PermissionsUserModel object) {
    final jsObj = IsarNative.newJsObject();
    IsarNative.jsObjectSet(jsObj, 'admin', object.admin);
    IsarNative.jsObjectSet(jsObj, 'deleted', object.deleted);
    IsarNative.jsObjectSet(
        jsObj, 'id', _permissionsUserModelUUIDConverter.toIsar(object.id));
    IsarNative.jsObjectSet(jsObj, 'iid', object.iid);
    IsarNative.jsObjectSet(jsObj, 'lastLocalChange',
        object.lastLocalChange.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(jsObj, 'lastServerState',
        object.lastServerState.toUtc().millisecondsSinceEpoch);
    IsarNative.jsObjectSet(
        jsObj, 'permissionAccepted', object.permissionAccepted);
    IsarNative.jsObjectSet(jsObj, 'read', object.read);
    IsarNative.jsObjectSet(jsObj, 'write', object.write);
    return jsObj;
  }

  @override
  PermissionsUserModel deserialize(
      IsarCollection<PermissionsUserModel> collection, dynamic jsObj) {
    final object = PermissionsUserModel();
    object.admin = IsarNative.jsObjectGet(jsObj, 'admin') ?? false;
    object.deleted = IsarNative.jsObjectGet(jsObj, 'deleted') ?? false;
    object.id = _permissionsUserModelUUIDConverter
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
    object.permissionAccepted =
        IsarNative.jsObjectGet(jsObj, 'permissionAccepted') ?? false;
    object.read = IsarNative.jsObjectGet(jsObj, 'read') ?? false;
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
        return (_permissionsUserModelUUIDConverter
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
      case 'permissionAccepted':
        return (IsarNative.jsObjectGet(jsObj, 'permissionAccepted') ?? false)
            as P;
      case 'read':
        return (IsarNative.jsObjectGet(jsObj, 'read') ?? false) as P;
      case 'write':
        return (IsarNative.jsObjectGet(jsObj, 'write') ?? false) as P;
      default:
        throw 'Illegal propertyName';
    }
  }

  @override
  void attachLinks(Isar isar, int id, PermissionsUserModel object) {
    object.permissionCreator.attach(
      id,
      isar.permissionsUserModels,
      isar.getCollection<UserModel>('UserModel'),
      'permissionCreator',
      false,
    );
    object.user.attach(
      id,
      isar.permissionsUserModels,
      isar.getCollection<UserModel>('UserModel'),
      'user',
      false,
    );
  }
}

class _PermissionsUserModelNativeAdapter
    extends IsarNativeTypeAdapter<PermissionsUserModel> {
  const _PermissionsUserModelNativeAdapter();

  @override
  void serialize(
      IsarCollection<PermissionsUserModel> collection,
      IsarRawObject rawObj,
      PermissionsUserModel object,
      int staticSize,
      List<int> offsets,
      AdapterAlloc alloc) {
    var dynamicSize = 0;
    final value0 = object.admin;
    final _admin = value0;
    final value1 = object.deleted;
    final _deleted = value1;
    final value2 = _permissionsUserModelUUIDConverter.toIsar(object.id);
    final _id = IsarBinaryWriter.utf8Encoder.convert(value2);
    dynamicSize += (_id.length) as int;
    final value3 = object.lastLocalChange;
    final _lastLocalChange = value3;
    final value4 = object.lastServerState;
    final _lastServerState = value4;
    final value5 = object.permissionAccepted;
    final _permissionAccepted = value5;
    final value6 = object.read;
    final _read = value6;
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
    writer.writeBool(offsets[5], _permissionAccepted);
    writer.writeBool(offsets[6], _read);
    writer.writeBool(offsets[7], _write);
  }

  @override
  PermissionsUserModel deserialize(
      IsarCollection<PermissionsUserModel> collection,
      int id,
      IsarBinaryReader reader,
      List<int> offsets) {
    final object = PermissionsUserModel();
    object.admin = reader.readBool(offsets[0]);
    object.deleted = reader.readBool(offsets[1]);
    object.id = _permissionsUserModelUUIDConverter
        .fromIsar(reader.readString(offsets[2]));
    object.iid = id;
    object.lastLocalChange = reader.readDateTime(offsets[3]);
    object.lastServerState = reader.readDateTime(offsets[4]);
    object.permissionAccepted = reader.readBool(offsets[5]);
    object.read = reader.readBool(offsets[6]);
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
        return (_permissionsUserModelUUIDConverter
            .fromIsar(reader.readString(offset))) as P;
      case 3:
        return (reader.readDateTime(offset)) as P;
      case 4:
        return (reader.readDateTime(offset)) as P;
      case 5:
        return (reader.readBool(offset)) as P;
      case 6:
        return (reader.readBool(offset)) as P;
      case 7:
        return (reader.readBool(offset)) as P;
      default:
        throw 'Illegal propertyIndex';
    }
  }

  @override
  void attachLinks(Isar isar, int id, PermissionsUserModel object) {
    object.permissionCreator.attach(
      id,
      isar.permissionsUserModels,
      isar.getCollection<UserModel>('UserModel'),
      'permissionCreator',
      false,
    );
    object.user.attach(
      id,
      isar.permissionsUserModels,
      isar.getCollection<UserModel>('UserModel'),
      'user',
      false,
    );
  }
}

extension PermissionsUserModelByIndex on IsarCollection<PermissionsUserModel> {
  Future<PermissionsUserModel?> getById(UuidValue id) {
    return getByIndex('id', [id]);
  }

  PermissionsUserModel? getByIdSync(UuidValue id) {
    return getByIndexSync('id', [id]);
  }

  Future<bool> deleteById(UuidValue id) {
    return deleteByIndex('id', [id]);
  }

  bool deleteByIdSync(UuidValue id) {
    return deleteByIndexSync('id', [id]);
  }

  Future<List<PermissionsUserModel?>> getAllById(List<UuidValue> idValues) {
    final values = idValues.map((e) => [e]).toList();
    return getAllByIndex('id', values);
  }

  List<PermissionsUserModel?> getAllByIdSync(List<UuidValue> idValues) {
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

extension PermissionsUserModelQueryWhereSort
    on QueryBuilder<PermissionsUserModel, PermissionsUserModel, QWhere> {
  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterWhere>
      anyIid() {
    return addWhereClauseInternal(const WhereClause(indexName: null));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterWhere>
      anyId() {
    return addWhereClauseInternal(const WhereClause(indexName: 'id'));
  }
}

extension PermissionsUserModelQueryWhere
    on QueryBuilder<PermissionsUserModel, PermissionsUserModel, QWhereClause> {
  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterWhereClause>
      iidEqualTo(int? iid) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [iid],
      includeLower: true,
      upper: [iid],
      includeUpper: true,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterWhereClause>
      iidNotEqualTo(int? iid) {
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

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterWhereClause>
      iidGreaterThan(
    int? iid, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      lower: [iid],
      includeLower: include,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterWhereClause>
      iidLessThan(
    int? iid, {
    bool include = false,
  }) {
    return addWhereClauseInternal(WhereClause(
      indexName: null,
      upper: [iid],
      includeUpper: include,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterWhereClause>
      iidBetween(
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

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterWhereClause>
      idEqualTo(UuidValue id) {
    return addWhereClauseInternal(WhereClause(
      indexName: 'id',
      lower: [_permissionsUserModelUUIDConverter.toIsar(id)],
      includeLower: true,
      upper: [_permissionsUserModelUUIDConverter.toIsar(id)],
      includeUpper: true,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterWhereClause>
      idNotEqualTo(UuidValue id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(WhereClause(
        indexName: 'id',
        upper: [_permissionsUserModelUUIDConverter.toIsar(id)],
        includeUpper: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'id',
        lower: [_permissionsUserModelUUIDConverter.toIsar(id)],
        includeLower: false,
      ));
    } else {
      return addWhereClauseInternal(WhereClause(
        indexName: 'id',
        lower: [_permissionsUserModelUUIDConverter.toIsar(id)],
        includeLower: false,
      )).addWhereClauseInternal(WhereClause(
        indexName: 'id',
        upper: [_permissionsUserModelUUIDConverter.toIsar(id)],
        includeUpper: false,
      ));
    }
  }
}

extension PermissionsUserModelQueryFilter on QueryBuilder<PermissionsUserModel,
    PermissionsUserModel, QFilterCondition> {
  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> adminEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'admin',
      value: value,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> deletedEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'deleted',
      value: value,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> idEqualTo(
    UuidValue value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: _permissionsUserModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> idGreaterThan(
    UuidValue value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: _permissionsUserModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> idLessThan(
    UuidValue value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: _permissionsUserModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> idBetween(
    UuidValue lower,
    UuidValue upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: _permissionsUserModelUUIDConverter.toIsar(lower),
      includeLower: includeLower,
      upper: _permissionsUserModelUUIDConverter.toIsar(upper),
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> idStartsWith(
    UuidValue value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'id',
      value: _permissionsUserModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> idEndsWith(
    UuidValue value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'id',
      value: _permissionsUserModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
          QAfterFilterCondition>
      idContains(UuidValue value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'id',
      value: _permissionsUserModelUUIDConverter.toIsar(value),
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
          QAfterFilterCondition>
      idMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'id',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> iidIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'iid',
      value: null,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> iidEqualTo(int? value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'iid',
      value: value,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> iidGreaterThan(
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

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> iidLessThan(
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

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> iidBetween(
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

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> lastLocalChangeEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastLocalChange',
      value: value,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> lastLocalChangeGreaterThan(
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

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> lastLocalChangeLessThan(
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

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> lastLocalChangeBetween(
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

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> lastServerStateEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lastServerState',
      value: value,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> lastServerStateGreaterThan(
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

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> lastServerStateLessThan(
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

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> lastServerStateBetween(
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

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> permissionAcceptedEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'permissionAccepted',
      value: value,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> readEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'read',
      value: value,
    ));
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> writeEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'write',
      value: value,
    ));
  }
}

extension PermissionsUserModelQueryLinks on QueryBuilder<PermissionsUserModel,
    PermissionsUserModel, QFilterCondition> {
  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> permissionCreator(FilterQuery<UserModel> q) {
    return linkInternal(
      isar.userModels,
      q,
      'permissionCreator',
    );
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel,
      QAfterFilterCondition> user(FilterQuery<UserModel> q) {
    return linkInternal(
      isar.userModels,
      q,
      'user',
    );
  }
}

extension PermissionsUserModelQueryWhereSortBy
    on QueryBuilder<PermissionsUserModel, PermissionsUserModel, QSortBy> {
  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByAdmin() {
    return addSortByInternal('admin', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByAdminDesc() {
    return addSortByInternal('admin', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByDeleted() {
    return addSortByInternal('deleted', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByDeletedDesc() {
    return addSortByInternal('deleted', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByIid() {
    return addSortByInternal('iid', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByIidDesc() {
    return addSortByInternal('iid', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByLastLocalChange() {
    return addSortByInternal('lastLocalChange', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByLastLocalChangeDesc() {
    return addSortByInternal('lastLocalChange', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByLastServerState() {
    return addSortByInternal('lastServerState', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByLastServerStateDesc() {
    return addSortByInternal('lastServerState', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByPermissionAccepted() {
    return addSortByInternal('permissionAccepted', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByPermissionAcceptedDesc() {
    return addSortByInternal('permissionAccepted', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByRead() {
    return addSortByInternal('read', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByReadDesc() {
    return addSortByInternal('read', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByWrite() {
    return addSortByInternal('write', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      sortByWriteDesc() {
    return addSortByInternal('write', Sort.desc);
  }
}

extension PermissionsUserModelQueryWhereSortThenBy
    on QueryBuilder<PermissionsUserModel, PermissionsUserModel, QSortThenBy> {
  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByAdmin() {
    return addSortByInternal('admin', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByAdminDesc() {
    return addSortByInternal('admin', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByDeleted() {
    return addSortByInternal('deleted', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByDeletedDesc() {
    return addSortByInternal('deleted', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByIid() {
    return addSortByInternal('iid', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByIidDesc() {
    return addSortByInternal('iid', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByLastLocalChange() {
    return addSortByInternal('lastLocalChange', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByLastLocalChangeDesc() {
    return addSortByInternal('lastLocalChange', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByLastServerState() {
    return addSortByInternal('lastServerState', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByLastServerStateDesc() {
    return addSortByInternal('lastServerState', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByPermissionAccepted() {
    return addSortByInternal('permissionAccepted', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByPermissionAcceptedDesc() {
    return addSortByInternal('permissionAccepted', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByRead() {
    return addSortByInternal('read', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByReadDesc() {
    return addSortByInternal('read', Sort.desc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByWrite() {
    return addSortByInternal('write', Sort.asc);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QAfterSortBy>
      thenByWriteDesc() {
    return addSortByInternal('write', Sort.desc);
  }
}

extension PermissionsUserModelQueryWhereDistinct
    on QueryBuilder<PermissionsUserModel, PermissionsUserModel, QDistinct> {
  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QDistinct>
      distinctByAdmin() {
    return addDistinctByInternal('admin');
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QDistinct>
      distinctByDeleted() {
    return addDistinctByInternal('deleted');
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QDistinct>
      distinctById({bool caseSensitive = true}) {
    return addDistinctByInternal('id', caseSensitive: caseSensitive);
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QDistinct>
      distinctByIid() {
    return addDistinctByInternal('iid');
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QDistinct>
      distinctByLastLocalChange() {
    return addDistinctByInternal('lastLocalChange');
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QDistinct>
      distinctByLastServerState() {
    return addDistinctByInternal('lastServerState');
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QDistinct>
      distinctByPermissionAccepted() {
    return addDistinctByInternal('permissionAccepted');
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QDistinct>
      distinctByRead() {
    return addDistinctByInternal('read');
  }

  QueryBuilder<PermissionsUserModel, PermissionsUserModel, QDistinct>
      distinctByWrite() {
    return addDistinctByInternal('write');
  }
}

extension PermissionsUserModelQueryProperty on QueryBuilder<
    PermissionsUserModel, PermissionsUserModel, QQueryProperty> {
  QueryBuilder<PermissionsUserModel, bool, QQueryOperations> adminProperty() {
    return addPropertyNameInternal('admin');
  }

  QueryBuilder<PermissionsUserModel, bool, QQueryOperations> deletedProperty() {
    return addPropertyNameInternal('deleted');
  }

  QueryBuilder<PermissionsUserModel, UuidValue, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<PermissionsUserModel, int?, QQueryOperations> iidProperty() {
    return addPropertyNameInternal('iid');
  }

  QueryBuilder<PermissionsUserModel, DateTime, QQueryOperations>
      lastLocalChangeProperty() {
    return addPropertyNameInternal('lastLocalChange');
  }

  QueryBuilder<PermissionsUserModel, DateTime, QQueryOperations>
      lastServerStateProperty() {
    return addPropertyNameInternal('lastServerState');
  }

  QueryBuilder<PermissionsUserModel, bool, QQueryOperations>
      permissionAcceptedProperty() {
    return addPropertyNameInternal('permissionAccepted');
  }

  QueryBuilder<PermissionsUserModel, bool, QQueryOperations> readProperty() {
    return addPropertyNameInternal('read');
  }

  QueryBuilder<PermissionsUserModel, bool, QQueryOperations> writeProperty() {
    return addPropertyNameInternal('write');
  }
}

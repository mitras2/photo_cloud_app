import 'package:photo_cloud/dtos/basic_sync_dto.dart';
import 'package:photo_cloud/dtos/permissions_direct_dto.dart';
import 'package:uuid/uuid.dart';

/// id : "221051d7-39df-4ba6-8350-b9d28564ef77"
/// storeName : "Peters Store"
/// userPermissions : {"read":true,"write":true,"admin":true}

class StoreSimpleDTO extends BasicSyncDTO{

  late UuidValue _id;
  late String _storeName;
  PermissionsDirectDTO? _userPermissions;

  UuidValue get id => _id;
  String get storeName => _storeName;
  PermissionsDirectDTO? get userPermissions => _userPermissions;

  StoreSimpleDTO({
    required UuidValue id,
    required String storeName,
    required bool deleted,
    required DateTime lastChanged,
    PermissionsDirectDTO? userPermissions,
  }) : super(deleted: deleted, lastChanged: lastChanged) {
    _id = id;
    _storeName = storeName;
    _userPermissions = userPermissions;
  }

  StoreSimpleDTO.fromJson(dynamic json): super.fromJson(json) {
    _id = UuidValue(json['id']);
    _storeName = json['storeName'];
    _userPermissions = json['userPermissions'] != null ? PermissionsDirectDTO.fromJson(json['userPermissions']) : null;
  }

  Map<String, dynamic> toJson() {
    final map = super.toJson();

    map['id'] = _id.uuid;
    map['storeName'] = _storeName;
    if (_userPermissions != null) {
      map['userPermissions'] = _userPermissions?.toJson();
    }
    return map;
  }

}
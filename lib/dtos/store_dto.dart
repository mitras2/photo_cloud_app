import 'package:photo_cloud/dtos/permissions_direct_dto.dart';
import 'package:photo_cloud/dtos/permissions_user_dto.dart';
import 'package:photo_cloud/dtos/store_simple_dto.dart';
import 'package:photo_cloud/dtos/user_simple_dto.dart';
import 'package:uuid/uuid.dart';

/// id : "221051d7-39df-4ba6-8350-b9d28564ef77"
/// storeName : "Peters Store"
/// storeCreator : {"id":"8c2a0937-bcd4-4b95-a769-082c58093cad","username":"Peter"}
/// storeOwner : {"id":"8c2a0937-bcd4-4b95-a769-082c58093cad","username":"Peter"}
/// userPermissions : {"read":true,"write":true,"admin":true}
/// permissionsList : []

class StoreDTO extends StoreSimpleDTO {
  late UserSimpleDTO _storeCreator;
  late UserSimpleDTO _storeOwner;
  late List<PermissionsUserDTO> _permissionsList;

  UserSimpleDTO get storeCreator => _storeCreator;
  UserSimpleDTO get storeOwner => _storeOwner;
  List<PermissionsUserDTO> get permissionsList => _permissionsList;

  StoreDTO({
    required UuidValue id,
    required String storeName,
    required UserSimpleDTO storeCreator,
    required UserSimpleDTO storeOwner,
    List<PermissionsUserDTO>? permissionsList,
    PermissionsDirectDTO? userPermissions,})
      : super (id: id, storeName: storeName, userPermissions: userPermissions) {
    _storeCreator = storeCreator;
    _storeOwner = storeOwner;
    _permissionsList = permissionsList ?? [];
  }

  StoreDTO.fromJson(dynamic json): super.fromJson(json) {
    _storeCreator = UserSimpleDTO.fromJson(json['storeCreator']);
    _storeOwner = UserSimpleDTO.fromJson(json['storeOwner']);
    if (json['permissionsList'] != null) {
      _permissionsList = [];
      json['permissionsList'].forEach((v) {
        _permissionsList.add(PermissionsUserDTO.fromJson(v));
      });
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final map = super.toJson();

    map['storeCreator'] = _storeCreator.toJson();
    map['storeOwner'] = _storeOwner.toJson();
    map['permissionsList'] = _permissionsList.map((v) => v.toJson()).toList();

    return map;
  }

}
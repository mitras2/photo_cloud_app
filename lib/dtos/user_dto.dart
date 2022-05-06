import 'package:photo_cloud/dtos/store_dto.dart';
import 'package:photo_cloud/dtos/store_simple_dto.dart';
import 'package:photo_cloud/dtos/user_simple_dto.dart';
import 'package:uuid/uuid.dart';

/// eMail : "peter_pan@intheclouds.de"
/// defaultStore : {"id":"221051d7-39df-4ba6-8350-b9d28564ef77","storeName":"Peters Store","userPermissions":{"read":true,"write":true,"admin":true}}
/// stores : [{"storeCreator":{"id":"8c2a0937-bcd4-4b95-a769-082c58093cad","username":"Peter"},"storeOwner":{"id":"8c2a0937-bcd4-4b95-a769-082c58093cad","username":"Peter"},"permissionsList":[],"id":"221051d7-39df-4ba6-8350-b9d28564ef77","storeName":"Lucas Store","userPermissions":{"read":true,"write":true,"admin":true}}]
/// id : "8c2a0937-bcd4-4b95-a769-082c58093cad"
/// username : "Peter"

/// Response to the user-information get call
class UserDTO extends UserSimpleDTO {

  late String _eMail;
  StoreSimpleDTO? _defaultStore;
  late List<StoreDTO> _stores;

  String? get eMail => _eMail;
  StoreSimpleDTO? get defaultStore => _defaultStore;
  List<StoreDTO>? get stores => _stores;

  UserDTO({
      required UuidValue id,
      required String eMail,
      required String username,
      required bool deleted,
      required DateTime lastChanged,
      StoreSimpleDTO? defaultStore,
      List<StoreDTO>? stores,}) : super(id: id, username: username, deleted: deleted, lastChanged: lastChanged) {
    _eMail = eMail;
    _defaultStore = defaultStore;
    _stores = stores ?? [];
}

  UserDTO.fromJson(dynamic json) : super.fromJson(json) {
    _eMail = json['eMail'];
    _defaultStore = json['defaultStore'] != null ? StoreSimpleDTO.fromJson(json['defaultStore']) : null;
    if (json['stores'] != null) {
      _stores = [];
      json['stores'].forEach((v) {
        _stores.add(StoreDTO.fromJson(v));
      });
    }
  }


  @override
  Map<String, dynamic> toJson() {
    final map = super.toJson();

    map['eMail'] = _eMail;
    map['stores'] = _stores.map((v) => v.toJson()).toList();
    if (_defaultStore != null) {
      map['defaultStore'] = _defaultStore?.toJson();
    }

    return map;
  }

}
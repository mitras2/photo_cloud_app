import 'package:photo_cloud/dtos/user_simple_dto.dart';
import 'package:uuid/uuid.dart';

class PermissionsUserDTO {

  late UuidValue _id;
  late UserSimpleDTO _user;
  late UserSimpleDTO _permissionCreator;
  late bool _read;
  late bool _write;
  late bool _admin;
  late bool _permissionAccepted;

  UuidValue get id => _id;
  UserSimpleDTO get user => _user;
  UserSimpleDTO get permissionCreator => _permissionCreator;
  bool get read => _read;
  bool get write => _write;
  bool get admin => _admin;
  bool get permissionAccepted => _permissionAccepted;

  PermissionsUserDTO({
    required UuidValue id,
    required UserSimpleDTO user,
    required UserSimpleDTO permissionCreator,
    required bool read,
    required bool write,
    required bool admin,
    required bool permissionAccepted, }){
    _id = id;
    _user = user;
    _permissionCreator = permissionCreator;
    _read = read;
    _write = write;
    _admin = admin;
    _permissionAccepted = permissionAccepted;
  }

  PermissionsUserDTO.fromJson(dynamic json) {
    _id = UuidValue(json['id']);
    _user = UserSimpleDTO.fromJson(json);
    _permissionCreator = UserSimpleDTO.fromJson(json);
    _read = json['read'];
    _write = json['write'];
    _admin = json['admin'];
    _permissionAccepted = json['permissionAccepted'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id.uuid;
    map['user'] = _user.toJson();
    map['permissionCreator'] = _permissionCreator.toJson();
    map['read'] = _read;
    map['write'] = _write;
    map['admin'] = _admin;
    map['permissionAccepted'] = _permissionAccepted;

    return map;
  }

}
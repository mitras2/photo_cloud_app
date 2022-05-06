import 'package:photo_cloud/dtos/basic_sync_dto.dart';
import 'package:uuid/uuid.dart';

/// id : "8c2a0937-bcd4-4b95-a769-082c58093cad"
/// username : "Peter"

class UserSimpleDTO extends BasicSyncDTO {

  late UuidValue _id;
  late String _username;

  UuidValue get id => _id;
  String get username => _username;

  UserSimpleDTO({
    required UuidValue id,
    required String username,
    required bool deleted,
    required DateTime lastChanged
  }): super(deleted: deleted, lastChanged: lastChanged){
    _id = id;
    _username = username;
  }

  UserSimpleDTO.fromJson(dynamic json) : super.fromJson(json) {
    _id = UuidValue(json['id']);
    _username = json['username'];
  }

  Map<String, dynamic> toJson() {
    final map = super.toJson();

    map['id'] = _id.uuid;
    map['username'] = _username;
    return map;
  }

}
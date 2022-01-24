import 'package:uuid/uuid.dart';

/// id : "8c2a0937-bcd4-4b95-a769-082c58093cad"
/// username : "Peter"

class UserSimpleDTO {

  late UuidValue _id;
  late String _username;

  UuidValue get id => _id;
  String get username => _username;

  UserSimpleDTO({
    required UuidValue id,
    required String username,}){
    _id = id;
    _username = username;
  }

  UserSimpleDTO.fromJson(dynamic json) {
    _id = UuidValue(json['id']);
    _username = json['username'];

  }
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id.uuid;
    map['username'] = _username;
    return map;
  }

}
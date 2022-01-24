
import 'package:uuid/uuid.dart';

/// token : "encryptedtoken.string_thatwillbequitelong"
/// expires : "2021-10-12T17:56:07.7759078+02:00"
/// userId : "8c2a0937-bcd4-4b95-a769-082c58093cad"

class LoginDTO {

  late String _token;
  late DateTime _expires;
  late UuidValue _userId;

  LoginDTO({
      required String token,
      required DateTime expires,
      required UuidValue userId,}){
    _token = token;
    _expires = expires;
    _userId = userId;
}

  LoginDTO.fromJson(dynamic json) {
    _token = json['token'];
    _expires = DateTime.parse(json['expires']);
    _userId = UuidValue(json['userId']);
  }

  UuidValue get userId => _userId;
  String get token => _token;
  DateTime get expires => _expires;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['expires'] = _expires.toIso8601String();
    map['userId'] = _userId.uuid;
    return map;
  }

}
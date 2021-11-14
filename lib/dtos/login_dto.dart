
/// token : "encryptedtoken.string_thatwillbequitelong"
/// expires : "2021-10-12T17:56:07.7759078+02:00"
/// userId : "8c2a0937-bcd4-4b95-a769-082c58093cad"

class LoginDTO {

  String? _token;
  String? _expires;
  String? _userId;

  LoginDTO({
      String? token, 
      String? expires, 
      String? userId,}){
    _token = token;
    _expires = expires;
    _userId = userId;
}

  LoginDTO.fromJson(dynamic json) {
    _token = json['token'];
    _expires = json['expires'];
    _userId = json['userId'];
  }

  String? get token => _token;
  String? get expires => _expires;
  String? get userId => _userId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = _token;
    map['expires'] = _expires;
    map['userId'] = _userId;
    return map;
  }

}
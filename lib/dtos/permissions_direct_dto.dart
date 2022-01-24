/// read : true
/// write : true
/// admin : true

class PermissionsDirectDTO {

  late bool _read;
  late bool _write;
  late bool _admin;

  bool get read => _read;
  bool get write => _write;
  bool get admin => _admin;

  PermissionsDirectDTO({
    required bool read,
    required bool write,
    required bool admin,}){
    _read = read;
    _write = write;
    _admin = admin;
  }

  PermissionsDirectDTO.fromJson(dynamic json) {
    _read = json['read'];
    _write = json['write'];
    _admin = json['admin'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['read'] = _read;
    map['write'] = _write;
    map['admin'] = _admin;
    return map;
  }

}
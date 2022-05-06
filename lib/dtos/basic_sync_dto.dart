
abstract class BasicSyncDTO {
  late bool _deleted;
  late DateTime _lastChanged;

  bool get deleted => _deleted;
  DateTime get lastChanged => _lastChanged;
  int get lastChangedMillis => _lastChanged.millisecondsSinceEpoch;

  BasicSyncDTO({
    required bool deleted,
    required DateTime lastChanged,}){
    _deleted = deleted;
    _lastChanged = lastChanged;
  }

  BasicSyncDTO.fromJson(dynamic json) {
    _deleted = json['deleted'];
    _lastChanged = DateTime(json['lastChanged']);
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['deleted'] = _deleted;
    map['lastChanged'] = _lastChanged.toIso8601String();
    return map;
  }
}
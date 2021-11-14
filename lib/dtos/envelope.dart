
class Envelope {

  Envelope({
    Map<String, dynamic>? result,
    String? errorMessage,
    String? errorCode,
    required DateTime timeGenerated,}){
    _result = result;
    _errorMessage = errorMessage;
    _errorCode = errorCode;
    _timeGenerated = timeGenerated;
  }

  Envelope.fromJson(dynamic json) {
    _result = json['result'];
    _errorMessage = json['errorMessage'];
    _errorCode = json['errorCode'];
    _timeGenerated = DateTime(json['timeGenerated']);
  }

  Map<String, dynamic>? _result;
  String? _errorMessage;
  String? _errorCode;
  late DateTime _timeGenerated;

  Map<String, dynamic>? get resultJson => _result;
  String? get errorMessage => _errorMessage;
  String? get errorCode => _errorCode;
  DateTime get timeGenerated => _timeGenerated;
  bool get success => _result != null && _errorMessage == null;
  bool get fail => !success;

}
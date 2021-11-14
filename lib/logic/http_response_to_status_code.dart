
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_playground/base_models/api_status_codes_enum.dart';

ApiStatusCodes responseToStatusCodeEnum ({required http.Response response}) {
  return _intToStatusCodeEnum(statusCode: response.statusCode);
}

ApiStatusCodes clientResponseToStatusCodeEnum ({required HttpClientResponse response}) {
  return _intToStatusCodeEnum(statusCode: response.statusCode);
}

ApiStatusCodes _intToStatusCodeEnum ({required int statusCode}) {
  switch (int) {

    default:
      return ApiStatusCodes.UnknownNetworkError;
  }
}
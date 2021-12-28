
import 'dart:io';

import 'package:photo_cloud/dtos/envelope.dart';
import 'package:photo_cloud/logic/http_response_to_status_code.dart';
import 'package:http/http.dart';

import 'api_status_codes_enum.dart';

class ApiError {
  
  final ApiStatusCodes apiStatusCode;
  final String errorMessage;
  final String? errorMessageIntlCode;

  ApiError({required this.apiStatusCode, required this.errorMessage, this.errorMessageIntlCode = null});

  factory ApiError.fromClientResponse(HttpClientResponse response, Envelope envelope) {
    return ApiError(apiStatusCode: clientResponseToStatusCodeEnum(response: response), errorMessage: envelope.errorMessage!, errorMessageIntlCode: envelope.errorCode);
  }

  factory ApiError.fromResponse(Response response, Envelope envelope) {
    return ApiError(apiStatusCode: responseToStatusCodeEnum(response: response), errorMessage: envelope.errorMessage!, errorMessageIntlCode: envelope.errorCode);
  }

  factory ApiError.timeout() {
    return ApiError(apiStatusCode: ApiStatusCodes.Timeout, errorMessage: 'Timeout', errorMessageIntlCode: 'Timeout');
  }

  factory ApiError.notLoggedIn() {
    return ApiError(apiStatusCode: ApiStatusCodes.NotLoggedIn, errorMessage: 'Not logged in', errorMessageIntlCode: 'NotLoggedIn');
  }

  factory ApiError.unknownNetworkError() {
    return ApiError(apiStatusCode: ApiStatusCodes.UnknownNetworkError, errorMessage: 'Unknown Network Error', errorMessageIntlCode: 'UnknownNetworkError');
  }
  
}


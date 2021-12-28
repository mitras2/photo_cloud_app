
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:photo_cloud/base_models/api_status_codes_enum.dart';
import 'package:result_type/result_type.dart';

import 'package:photo_cloud/base_models/api_error.dart';
import 'package:photo_cloud/data_models/user_login_prefs.dart';
import 'package:photo_cloud/dtos/envelope.dart';
import 'package:photo_cloud/logic/store_save_login.dart';

import 'api_base_headers.dart';

Api? _instance;

Api api() {
  //If null, instantiate
  _instance ??= Api._constructor();

  return _instance!;
}

enum _Method {
  Get,
  Post,
  Patch,
  Delete
}

class Api {

  UserLoginPrefs? _userData;

  Api._constructor();

  Future _init() async {
    _userData = await getUserLogin();
  }

  Future<String?> _getToken() async {
    if(_userData == null){
      await _init();
    }

    return _userData?.token;
  }

  // Future<Result<T, ApiError>> get<T>({authenticated = true}) async {
  //
  // }

  Future<Result<Map<String, dynamic>, ApiError>> get({
    required Uri targetUri,
    authenticated = true})
  async {
    return await _exec(method: _Method.Get, targetUri: targetUri, authenticated: authenticated);
  }

  Future<Result<Map<String, dynamic>, ApiError>> post({
    required Uri targetUri,
    Map<String, dynamic> payload = const {},
    authenticated = true})
  async {
    return await _exec(method: _Method.Post, targetUri: targetUri, payload: payload, authenticated: authenticated);
  }

  Future<Result<Map<String, dynamic>, ApiError>> patch({
    required Uri targetUri,
    Map<String, dynamic> payload = const {},
    authenticated = true})
  async {
    return await _exec(method: _Method.Patch, targetUri: targetUri, payload: payload, authenticated: authenticated);
  }

  Future<Result<Map<String, dynamic>, ApiError>> delete({
    required Uri targetUri,
    authenticated = true})
  async {
    return await _exec(method: _Method.Delete, targetUri: targetUri, authenticated: authenticated);
  }

  Future<Result<Map<String, dynamic>, ApiError>> _exec({
    required _Method method,
    required Uri targetUri,
    Map<String, dynamic> payload = const {},
    authenticated = true})
  async {

    try {
      var dataJson = json.encode(payload);
      String? token = await _getToken();
      var headers = headersJson;

      if (authenticated) {
        if(token == null) {
          return Failure(ApiError.notLoggedIn());
        }

        // Set Token
        headers["Authorization"] = "Bearer $token";
      }

      // Start the Request
      http.Response response;
      switch(method) {
        case _Method.Get:
          response = await _execGet(targetUri: targetUri, headers: headers);
          break;
        case _Method.Post:
          response = await _execPost(targetUri: targetUri, headers: headers, payload: dataJson);
          break;
        case _Method.Patch:
          response = await _execPatch(targetUri: targetUri, headers: headers, payload: dataJson);
          break;
        case _Method.Delete:
          response = await _execDelete(targetUri: targetUri, headers: headers);
          break;
      }

      var jsonResponse = json.decode(response.body);
      Envelope env = Envelope.fromJson(jsonResponse);

      if (env.fail) {
        return Failure(ApiError.fromResponse(response, env));
      }

      return Success(env.resultJson!);
    } on TimeoutException {
      return Failure(ApiError.timeout());
    } on FormatException {
      return Failure(ApiError(apiStatusCode: ApiStatusCodes.UnknownNetworkError, errorMessage: "Invalid Server Response", errorMessageIntlCode: "invalidResponse"));
    } on Exception catch (e) {
      return Failure(ApiError.unknownNetworkError());
    }
  }

  Future<http.Response> _execGet({
    required Uri targetUri,
    required Map<String, String> headers,
  }) async {
    return await http.get(
        targetUri,
        headers: headers)
        .timeout(const Duration(seconds: 20));
  }

  Future<http.Response> _execPost({
    required Uri targetUri,
    required Map<String, String> headers,
    required String payload,
  }) async {
    return await http.post(
        targetUri,
        headers: headers,
        body: payload)
        .timeout(const Duration(seconds: 20));
  }

  Future<http.Response> _execPatch({
    required Uri targetUri,
    required Map<String, String> headers,
    required String payload,
  }) async {
    return await http.patch(
        targetUri,
        headers: headers,
        body: payload)
        .timeout(const Duration(seconds: 20));
  }

  Future<http.Response> _execDelete({
    required Uri targetUri,
    required Map<String, String> headers,
  }) async {
    return await http.delete(
        targetUri,
        headers: headers)
        .timeout(const Duration(seconds: 20));
  }

}


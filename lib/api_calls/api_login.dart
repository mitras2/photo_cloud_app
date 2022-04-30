
import 'dart:convert';

import 'package:photo_cloud/api/api_base_headers.dart';
import 'package:photo_cloud/api/api_paths.dart';
import 'package:photo_cloud/base_models/api_error.dart';
import 'package:photo_cloud/base_models/api_status_codes_enum.dart';
import 'package:photo_cloud/dtos/envelope.dart';
import 'package:photo_cloud/dtos/login_dto.dart';
import 'package:result_type/result_type.dart';
import 'dart:async';

import 'package:http/http.dart' as http;

Future<Result<LoginDTO, ApiError>> loginUser({required Uri serverBaseUrl, required String email, required String password}) async {

  // io.HttpClientRequest? connection;
  //
  // var httpClient = io.HttpClient();
  // httpClient.connectionTimeout = const Duration(seconds: 8);
  //
  // try {
  //   var connection = await httpClient.getUrl(serverBaseUrl);
  //
  //   var response = await connection
  //         .close()
  //         .then((result) {
  //           result.transform(utf8.decoder).listen((contents) {
  //             // handle data
  //           });
  //         })
  //         .timeout(const Duration(seconds: 1),);
  //
  // } on TimeoutException catch (_) {
  //   connection?.abort();
  //   return Failure(ApiError(apiStatusCode: ApiStatusCodes.Timeout, errorMessage: "Timeout"));
  // } on io.SocketException catch (e) {
  //   return Failure(ApiError.timeout());
  // }

  try {
    var data = {"email": email, "password": password};
    var dataJson = json.encode(data);

    final Uri targetUri = userLoginUri(serverUri: serverBaseUrl);
    final response = await http.post(targetUri, headers: headersJson, body: dataJson)
        .timeout(const Duration(seconds: 20));

    var jsonResponse = json.decode(response.body);
    Envelope env = Envelope.fromJson(jsonResponse);

    if(env.fail) {
      return Failure(ApiError.fromResponse(response, env));
    }

    return Success(LoginDTO.fromJson(env.resultJson));

    // if (response.statusCode == 200) {
    //   if(env.fail) {
    //     return Failure(ApiError.fromResponse(response, env));
    //   }
    //
    //   return Success(LoginDTO.fromJson(env.resultJson));
    //
    // } else {
    //   return Failure(ApiError(apiStatusCode: ApiStatusCodes.UnknownNetworkError, errorMessage: "Invalid Server Response", errorMessageIntlCode: "invalidResponse"));
    // }

  } on TimeoutException {
    return Failure(ApiError.timeout());
  } on FormatException {
    return Failure(ApiError(apiStatusCode: ApiStatusCodes.UnknownNetworkError, errorMessage: "Invalid Server Response", errorMessageIntlCode: "invalidResponse"));
  }on Exception catch (e) {
    return Failure(ApiError.unknownNetworkError());
  }
}

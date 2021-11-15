
import 'dart:convert';

import 'package:photo_cloud/api/api_paths.dart';
import 'package:photo_cloud/base_models/api_error.dart';
import 'package:photo_cloud/dtos/envelope.dart';
import 'package:photo_cloud/dtos/login_dto.dart';
import 'package:result_type/result_type.dart';
import 'dart:async';

import 'package:http/http.dart' as http;

Future<Result<LoginDTO, ApiError>> loginUser({required Uri serverBaseUrl, required String username, required String password}) async {

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
    var data = {"email": username, "password": password};

    final response = await http.post(userLoginUri(serverUri: serverBaseUrl), body: data)
        .timeout(const Duration(seconds: 20));

    //TODO: Find a good solution how wo initially check for success
    if (response.statusCode == 200) {
      var jsonResponse = json.decode(response.body);
      Envelope env = Envelope.fromJson(jsonResponse);

      if(env.fail) {
        return Failure(ApiError.fromResponse(response, env));
      }

      return Success(LoginDTO.fromJson(env.resultJson));

    } else {
      throw Exception('Unable to fetch products from the REST API');
    }

  } on TimeoutException {
    return Failure(ApiError.timeout());
  } on Error {
    return Failure(ApiError.unknownNetworkError());
  }
}

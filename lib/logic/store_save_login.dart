import 'package:photo_cloud/data_models/user_login_prefs.dart';
import 'package:photo_cloud/dtos/login_dto.dart';
import 'package:shared_preferences/shared_preferences.dart';

const String keyServerAddress = "serverAddress";
const String keyUsername = "username";
const String keyUserId = "userId";
const String keyToken = "token";
const String keyExpires = "expires";

Future<void> saveUserLogin({required LoginDTO loginDTO, required Uri serverAddress, required String username}) async {
  final prefs = await SharedPreferences.getInstance();

  prefs.setString(keyServerAddress, serverAddress.toString());
  prefs.setString(keyUsername, username);
  prefs.setString(keyUserId, loginDTO.userId!);
  prefs.setString(keyToken, loginDTO.token!);
  prefs.setString(keyExpires, loginDTO.expires!);

  return;
}

Future<UserLoginPrefs?> getUserLogin() async {
  final prefs = await SharedPreferences.getInstance();

  String? serverAddress = prefs.getString(keyServerAddress);
  String? username = prefs.getString(keyUsername);
  String? userId = prefs.getString(keyUserId);
  String? token = prefs.getString(keyToken);
  String? expires = prefs.getString(keyExpires);

  if(serverAddress == null || username == null || userId == null || token == null || expires == null) {
    return null;
  }

  return UserLoginPrefs(serverAddress, username, userId, token, expires);
}

Future<void> clearUserLogin() async {
  final prefs = await SharedPreferences.getInstance();

  prefs.remove(keyServerAddress);
  prefs.remove(keyUsername);
  prefs.remove(keyUserId);
  prefs.remove(keyToken);
  prefs.remove(keyExpires);
}

Future<bool> hasUserLogin () async {
  final prefs = await SharedPreferences.getInstance();

  String? username = prefs.getString(keyUsername);

  return username != null && username.trim().isNotEmpty;
}
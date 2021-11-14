
const String _apiBaseUser = '/api/User';

const String _apiUserLogin = '$_apiBaseUser/login';
const String _apiCreateUser = _apiBaseUser;
const String _apiDeleteUser = _apiBaseUser;
const String _apiGetUser = '$_apiBaseUser/';




Uri userLoginUri({required Uri serverUri}) {
  String targetPath = serverUri.path + _apiUserLogin;
  return serverUri.replace(path: targetPath);
}
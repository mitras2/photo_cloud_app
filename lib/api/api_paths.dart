
const String _apiBaseUser = '/api/User';

const String _apiUserLogin = '$_apiBaseUser/login';
const String _apiCreateUser = _apiBaseUser;
const String _apiDeleteUser = _apiBaseUser;
const String _apiGetUser = '$_apiBaseUser/';

Uri userLoginUri({required Uri serverUri}) {
  String basePath = pathWithoutTrailingSlash(uriPath: serverUri.path);
  String targetPath = basePath + _apiUserLogin;
  return serverUri.replace(path: targetPath);
}

String pathWithoutTrailingSlash({required String uriPath}) {
  var path = uriPath;
  while (path.endsWith("/")) {
    path = path.substring(0, path.length -1);
  }
  return path;
}
import 'package:photo_cloud/base_imports.dart';
import 'package:photo_cloud/logic/store_save_login.dart';
import 'package:photo_cloud/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen> {

  Future<void> checkLogin(BuildContext context) async {
    var hasLogin = await hasUserLogin();
    if(!hasLogin) {
      Navigator.pushNamed(context, Routes.login);
      return;
    }

    var user = await getUserLogin();
    Navigator.pushNamed(context, Routes.home, arguments: user);
  }

  @override
  Widget build(BuildContext context) {
    checkLogin(context);

    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Text(AppLocalizations.of(context)!.welcome)
          )
      ),
    );
  }

}

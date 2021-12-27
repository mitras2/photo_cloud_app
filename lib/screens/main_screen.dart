import 'package:flutter/material.dart';
import 'package:photo_cloud/data_models/user_login_prefs.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final UserLoginPrefs? user = ModalRoute.of(context)?.settings.arguments as UserLoginPrefs?;
    final String name = user?.username ?? "none";

    return Container(
      child: Text("home of $name"),
    );
  }
}

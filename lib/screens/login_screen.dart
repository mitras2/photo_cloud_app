import 'package:flutter/material.dart';
import 'package:photo_cloud/base_imports.dart';
import 'package:photo_cloud/logic/api_login.dart';
import 'package:photo_cloud/logic/store_save_login.dart';
import 'package:photo_cloud/main_photo_cloud.dart';
import 'package:photo_cloud/widgets/login/login_input.dart';
import 'package:validated/validated.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoginScreenState();
  }
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController textServer = TextEditingController();
  final TextEditingController textUser = TextEditingController();
  final TextEditingController textPassword = TextEditingController();
  final formKey = GlobalKey<FormState>();

  String errorMessage = "";
  bool loginAttemptRunning = false;

  Future<void> login() async {
    setState(() {
      loginAttemptRunning = true;
    });

    bool isValid = this.validateInputs();
    if(!isValid) {
      setState(() {
        loginAttemptRunning = false;
      });
      return;
    }

    String url = textServer.value.text;
    String user = textUser.value.text;
    String password = textPassword.value.text;

    Uri? serverUri;
    try {
      serverUri = Uri.parse(url);
    } on Exception {
      setState(() {
        errorMessage = "Invalid Server URL";
        loginAttemptRunning = false;
      });
      return;
    }

    var result = await loginUser(
        serverBaseUrl: serverUri,
        username: user,
        password: password);

    setState(() {
      if (result.isFailure) {
        errorMessage = result.failure.errorMessage;
      } else {
        errorMessage = "";
      }
    });

    //TODO: If successful, end this section of the app
    if (result.isSuccess) {
      setState(() {
        errorMessage = "Success";
      });

      //Save the User-Login
      await saveUserLogin(loginDTO: result.success, serverAddress: serverUri, username: user);
      var userLogin = await getUserLogin();
      Navigator.pushNamed(context, Routes.home, arguments: userLogin);
    }

    setState(() {
      loginAttemptRunning = false;
    });
  }

  bool validateInputs() {
    String url = textServer.value.text;

    if(url.trim().isEmpty || !isURL(url)) {
      setState(() {
        errorMessage = "Invalid URL";
      });
     return false;
    }

    String user = textUser.value.text;
    if(user.trim().isEmpty) {
      setState(() {
        errorMessage = "A username is required";
      });
      return false;
    }

    String password = textPassword.value.text;
    if(password.isEmpty) {
      setState(() {
        errorMessage = "A password is required";
      });
      return false;
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Container(
                  constraints: const BoxConstraints(maxWidth: 400),
                  padding: const EdgeInsets.all(10),
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          LoginInput(
                            label: AppLocalizations.of(context)!.serverAddress,
                            validator: (_) => null,
                            enabled: !loginAttemptRunning,
                            controller: textServer,
                          ),
                          LoginInput(
                            label: AppLocalizations.of(context)!.login_emailAddress,
                            validator: (_) => null,
                            enabled: !loginAttemptRunning,
                            controller: textUser,
                          ),
                          LoginInput(
                            label: AppLocalizations.of(context)!.password,
                            validator: (_) => null,
                            enabled: !loginAttemptRunning,
                            controller: textPassword,
                          ),
                          Container(
                              padding: const EdgeInsets.all(4),
                              margin: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                errorMessage,
                                style: const TextStyle(color: Color.fromRGBO(111, 10, 10, 1.0)),
                              ),
                          ),
                          ElevatedButton(
                              onPressed: loginAttemptRunning ? null : login,
                              child: Text(loginAttemptRunning? AppLocalizations.of(context)!.button_logging_in : AppLocalizations.of(context)!.button_login))
                        ],
                      ),
                    ),
                  )))),
    );
  }

}

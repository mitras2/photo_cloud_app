import 'package:flutter/material.dart';
import 'package:photo_cloud/base_imports.dart';
import 'package:photo_cloud/api_calls/api_login.dart';
import 'package:photo_cloud/logic/store_save_login.dart';
import 'package:photo_cloud/main.dart';
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

    String url = textServer.value.text.trim();
    String emailAddress = textUser.value.text.trim();
    String password = textPassword.value.text.trim();

    bool isValid = validateInputs(serverUrl: url, email: emailAddress, password: password);
    if(!isValid) {
      setState(() {
        loginAttemptRunning = false;
      });
      return;
    }

    Uri? serverUri;
    try {
      serverUri = Uri.parse(url);
    } on Exception {
      setState(() {
        errorMessage = errorMessage = AppLocalizations.of(context)!.login_error_message_server;
        loginAttemptRunning = false;
      });
      return;
    }

    var result = await loginUser(
        serverBaseUrl: serverUri,
        email: emailAddress,
        password: password);

    setState(() {
      if (result.isFailure) {
        errorMessage = result.failure.errorMessage;
      }
    });

    if (result.isSuccess) {
      setState(() {
        // TODO: Uncomment
        // errorMessage = "";
        errorMessage = "Success";
      });

      //Save the User-Login
      await saveUserLogin(loginDTO: result.success, serverAddress: serverUri, username: emailAddress);
      var userLogin = await getUserLogin();
      Navigator.pushNamed(context, Routes.home, arguments: userLogin);
    }

    setState(() {
      loginAttemptRunning = false;
    });
  }

  bool validateInputs({required String serverUrl, required String email, required String password}) {
    if(serverUrl.isEmpty || !isURL(serverUrl)) {
      setState(() {
        errorMessage = AppLocalizations.of(context)!.login_error_message_server;
      });
     return false;
    }

    if(email.isEmpty || !isEmail(email)) {
      setState(() {
        errorMessage = AppLocalizations.of(context)!.login_error_message_email;
      });
      return false;
    }

    if(password.isEmpty) {
      setState(() {
        errorMessage = AppLocalizations.of(context)!.login_error_message_password;
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
                            obscureText: true,
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

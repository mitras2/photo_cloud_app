import 'package:flutter/material.dart';
import 'package:photo_cloud/logic/api_login.dart';
import 'package:photo_cloud/widgets/base/empty.dart';
import 'package:photo_cloud/widgets/login/login_input.dart';

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

  String? errorMessage;
  bool loginAtemptRunning = false;

  Future<void> login() async {
    setState(() {
      loginAtemptRunning = true;
    });

    Uri? serverUri;
    try {
      serverUri = Uri.parse(textServer.value.text);
    } on Error {
      setState(() {
        errorMessage = "Invalid Server URL";
        loginAtemptRunning = false;
      });
      return;
    }

    var result = await loginUser(serverBaseUrl: serverUri, username: textUser.value.text, password: textPassword.value.text);

    setState(() {
      if(result.isFailure){
        errorMessage = result.failure.errorMessage;
      } else {
        errorMessage = null;
      }
    });

    //TODO: If successful, end this section of the app
    if(result.isSuccess) {
      setState(() {
        errorMessage = "Success";
      });
    }


    setState(() {
      loginAtemptRunning = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea (
          child: Center(
              child: Form(
                child: SingleChildScrollView(
                  child: Column (
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LoginInput(label: 'Server', validator: (_) => null, enabled: !loginAtemptRunning, controller: textServer,),
                      LoginInput(label: 'Username', validator: (_) => null, enabled: !loginAtemptRunning, controller: textUser,),
                      LoginInput(label: 'Password', validator: (_) => null, enabled: !loginAtemptRunning, controller: textPassword,),
                      errorMessageWidget(),
                      elevatedButtonWidget()
                    ],
                  ),
                ),
              )
          )
      ),
    );
  }

  Widget errorMessageWidget() {
    if(errorMessage == null) {
      return const Empty();
    }

    return Text(
      errorMessage!,
      style: const TextStyle(
        color: Color.fromRGBO(111, 10, 10, 1.0)
      ),
    );
  }

  Widget elevatedButtonWidget() {

    if(loginAtemptRunning) {
      return const ElevatedButton(
          onPressed: null,
          child: Text('Loggin in...')
      );
    }

    return ElevatedButton(
        onPressed: () => login(),
        child: const Text('Login')
    );
  }
}
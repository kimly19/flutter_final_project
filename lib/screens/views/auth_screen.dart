import 'package:flutter/material.dart';
import 'package:flutter_project_2/screens/views/login_screen.dart';
import 'package:flutter_project_2/screens/views/signup_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return isLogin
        ? LoginScreen(onClickedSignUp: toggle)
        : SignupScreen(onClickedSignIn: toggle);
  }

  void toggle() => setState(() {
        isLogin = !isLogin;
      });
}

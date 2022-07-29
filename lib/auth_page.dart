import 'package:flutter/material.dart';
import 'package:foodelo/login_widget.dart';
import 'package:foodelo/signup_widget.dart';
class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool islogin = true;

  @override
  Widget build(BuildContext context) => islogin
  ? LoginWidget(onClickedSignUp: toggle)
  : SignUpWidget(onClickedSignIn: toggle);

  void toggle() => setState(() => islogin = !islogin);




}

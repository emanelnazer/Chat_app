import 'package:chat_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class Login_title extends StatelessWidget {
  const Login_title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Login In To Your Account",
      style:Styles.textStyle24,
    );
  }
}

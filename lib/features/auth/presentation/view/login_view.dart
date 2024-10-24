import 'package:chat_app/features/auth/presentation/view/widgets/login_body.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Scaffold(
        body: LoginBody(),
      ),
    );
  }
}

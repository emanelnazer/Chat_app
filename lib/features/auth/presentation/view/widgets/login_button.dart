import 'package:chat_app/core/shared_widgets/defalutbutton.dart';
import 'package:chat_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key, required this.emailcontroller, required this.passwordcontroller, required this.onsucess}) : super(key: key);
  final TextEditingController emailcontroller;
  final TextEditingController passwordcontroller;
  final VoidCallback onsucess;

  @override
  Widget build(BuildContext context) {
    return defaultButton(
      text: "Log In",
      background: ColorApp.primarycolor,
      function: (){

        }
    );
  }
}

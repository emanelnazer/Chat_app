import 'package:chat_app/core/shared_widgets/default_text.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController passwordcontroller;
  final VoidCallback toogleVisibility;
  final bool isPasswordVisibilty;
  const PasswordField({required this.passwordcontroller, required this.toogleVisibility, required this.isPasswordVisibilty});

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type: TextInputType.visiblePassword,
      label: "Enter Your Password",
      hint: "Your Password",.
      controll: passwordcontroller,
      prefix: Icons.lock,
      sufix:isPasswordVisibilty ? Icons.visibility : Icons.visibility_off,
      onpressed: toogleVisibility,
      validator: (value){
        if(value!.isEmpty){
          return "Password shouldn't be empty";
        }else{
          return null;
        }
      }
    );
  }
}

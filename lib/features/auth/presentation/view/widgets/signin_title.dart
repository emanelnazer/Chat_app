import 'package:chat_app/core/theme/colors.dart';
import 'package:chat_app/core/theme/styles.dart';
import 'package:chat_app/features/auth/presentation/view/login_view.dart';
import 'package:chat_app/features/auth/presentation/view/register_view.dart';
import 'package:flutter/material.dart';

class SignInTitle extends StatelessWidget {
  const SignInTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account?", style:TextStyle(color: Colors.black,fontSize: 16)),
        SizedBox(width: 5,),
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            );
          },
          child: Text("Sign In", style: TextStyle(color:ColorApp.primarycolor, fontSize: 16)),
        ),
      ],
    );
  }
}

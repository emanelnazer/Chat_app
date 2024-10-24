import 'package:chat_app/core/shared_widgets/default_text.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController emailcontroller;
  const EmailField({Key? key, required this.emailcontroller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return defaultText(
        type:TextInputType.emailAddress,
       label: "Enter Your Email",
      hint: "your email",
      prefix: Icons.email_outlined,
      controll: emailcontroller,
      validator:(value){
          if(value.isEmpty){
            return "Email Must Be not empty";
          }else
            {
              return null;
            }
      },
    );
  }
}

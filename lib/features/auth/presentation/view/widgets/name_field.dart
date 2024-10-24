import 'package:chat_app/core/shared_widgets/default_text.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  final TextEditingController namecontroller;
  const NameField({Key? key, required this.namecontroller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type:TextInputType.text,
      label: "Enter Your name",
      hint: "your name",
      prefix: Icons.person,
      controll: namecontroller,
      validator:(value){
        if(value.isEmpty){
          return "name Must Be not empty";
        }else
        {
          return null;
        }
      },
    );
  }
}

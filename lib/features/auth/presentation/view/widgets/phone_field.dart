import 'package:chat_app/core/shared_widgets/default_text.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  final TextEditingController phonecontroller;
  const PhoneField({Key? key, required this.phonecontroller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return defaultText(
      type:TextInputType.number,
      label: "Enter Your phone",
      hint: "your phone",
      prefix: Icons.phone,
      controll: phonecontroller,
      validator:(value){
        if(value.isEmpty){
          return "Phone Must Be not empty";
        }else
        {
          return null;
        }
      },
    );
  }
}

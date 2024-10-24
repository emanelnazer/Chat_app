import 'package:chat_app/core/constants/logo_image.dart';
import 'package:flutter/material.dart';

class Logo_widget extends StatelessWidget {
  const Logo_widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        child:Image.asset(Assests.logo_image)
    );
  }
}

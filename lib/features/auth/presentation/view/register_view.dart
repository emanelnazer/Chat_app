import 'package:chat_app/features/auth/presentation/view/widgets/register_body.dart';
import 'package:flutter/material.dart';

class Register_view extends StatelessWidget {
  const Register_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterBody(),
    );
  }
}

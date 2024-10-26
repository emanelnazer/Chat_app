import 'package:chat_app/features/calls/presenation/view/widgets/calls_body.dart';
import 'package:flutter/material.dart';

class CallsView extends StatelessWidget {
  const CallsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Calls_body(),
    );
  }
}

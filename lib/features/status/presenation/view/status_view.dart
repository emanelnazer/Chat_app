import 'package:chat_app/features/status/presenation/view/widgets/status_body.dart';
import 'package:flutter/material.dart';

class StatusView extends StatelessWidget {
  const StatusView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StatusBody(),
    );
  }
}

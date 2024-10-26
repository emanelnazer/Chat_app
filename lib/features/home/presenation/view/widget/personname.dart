
import 'package:chat_app/core/theme/styles.dart';
import 'package:flutter/material.dart';

class PersonName extends StatelessWidget {
  PersonName({Key? key,required this.personName}) : super(key: key);
  late String personName;
  @override
  Widget build(BuildContext context) {
    return Text(personName,style:Styles.textStyle24 ,);
  }
}
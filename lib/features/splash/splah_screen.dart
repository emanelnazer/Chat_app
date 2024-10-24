import 'dart:async';
import 'package:chat_app/core/constants/logo_image.dart';
import 'package:chat_app/features/auth/presentation/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/core/theme/colors.dart';

class SplahScreen extends StatefulWidget {
  const SplahScreen({Key? key}) : super(key: key);

  @override
  State<SplahScreen> createState() => _SplahScreenState();
}

class _SplahScreenState extends State<SplahScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacement(context,
        MaterialPageRoute(builder: (context)=>Login())));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Column(children: [
                Container(
                  height: 150,
                  child:Image.asset(Assests.logo_image)
                ),
                Text("Whatsapp",style: TextStyle(color:ColorApp.secondcolor,fontSize: 20,fontWeight: FontWeight.w400),)
              ],),
            ),
        SizedBox(height: 250,),
            Text('The best chat app of this century',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

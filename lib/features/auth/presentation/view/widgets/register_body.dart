import 'package:chat_app/features/auth/presentation/view/widgets/email_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/login_button.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/login_title.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/logo_widget.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/name_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/pass_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/phone_field.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/register_title.dart';
import 'package:chat_app/features/auth/presentation/view/widgets/signin_title.dart';
import 'package:chat_app/features/home/presenation/view/widget/home_body.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatefulWidget {
  RegisterBody({Key? key}) : super(key: key);
  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  TextEditingController nameController=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  bool isPasswordVisible=false;

  var formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
     return Form(
      key: formkey,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo_widget(),
            Login_title(),
            SizedBox(height: 20,),
            NameField(namecontroller: nameController),
            SizedBox(height: 20,),
            EmailField(emailcontroller: emailcontroller),
            SizedBox(height: 20,),
            PhoneField(phonecontroller: phonecontroller),
            SizedBox(height: 20,),
            PasswordField(passwordcontroller: passwordcontroller,
              isPasswordVisibilty:isPasswordVisible,
              toogleVisibility: (){
                setState((){
                  isPasswordVisible =!isPasswordVisible;
                });
              },
            ),
            SizedBox(height: 30,),
            LoginButton(passwordcontroller:passwordcontroller, emailcontroller: emailcontroller, onsucess: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeBody()),
              );
            },),
            SizedBox(height: 30,),
            SignInTitle(),

          ],
        ),
      ),
    );
  }
}


import 'package:chat_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

 Widget defaultText({
  TextEditingController? controll,
  required TextInputType type,
  Function(String)? onchange,
  FormFieldValidator? validator,
  String? label,
  String? hint,
  IconData? prefix,
  bool isObscure = false,
  IconData? sufix,
  final dynamic onpressed,
  final dynamic tab,
  bool? enable,

})=>TextFormField(
  onTap: tab,
  enabled: enable,
  controller: controll,
  obscureText: isObscure,
  decoration: InputDecoration(
    labelText: label,
    hintText: hint,
    prefixIcon: Icon(prefix),
    suffixIcon:sufix!=null ?IconButton(onPressed:onpressed
        , icon: Icon(sufix),
    ):null,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.black),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: ColorApp.primarycolor,width: 2.0),
    ),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: Colors.black)),
  ),
  style: const TextStyle(fontSize: 14),
  keyboardType: type,
  onChanged: onchange,
  validator: validator,
);
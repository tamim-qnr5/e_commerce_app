import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../MyTheme.dart';
class Login_Form extends StatelessWidget {
  String? Function(String?)? validator;
  TextEditingController controller;
  bool isPassword = false;
  TextInputType KeybordType;
  String hintText;

  Login_Form(
      {this.KeybordType = TextInputType.text,
      required this.controller,
      this.isPassword = false,
      required this.validator,
      required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      controller: controller,
      keyboardType: KeybordType,
      decoration: InputDecoration(
        filled: true,
          fillColor: MyTheme.whiteColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide:
                BorderSide(width: 3, color: MyTheme.whiteColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide:
                BorderSide(width: 3, color: MyTheme.whiteColor),
          ),
          hintText: hintText,
          ),
      obscureText: isPassword,
    );
  }
}

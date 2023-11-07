import 'dart:async';

import 'package:commerce_app/ui/auth/Register_screen/Register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../auth/Login/login_screen.dart';




class SplashScreen extends StatelessWidget {
  static const String routeName = 'splash';

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RegisterScreen.routeName);
    });
    return Scaffold(
      body: Image.asset(
        'assets/Splash Screen.png',
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}

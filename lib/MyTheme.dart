import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme {
  static Color primeColor = Color(0xff004081);
  static Color textColor = Color(0xff06004e);
  static Color whiteColor = Color(0xffffffff);
  static Color blackColor = Color(0xff000000);
  static ThemeData Theme = ThemeData(
      primaryColor: primeColor,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: blackColor,
        unselectedItemColor: whiteColor,
      ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          color: textColor,
          fontSize: 22,
          fontWeight: FontWeight.bold
      ),
        titleMedium: TextStyle(
            color: textColor,
            fontSize: 20,
            fontWeight: FontWeight.w700
        ),
        titleSmall: TextStyle(
            color: textColor,
            fontSize: 18,
            fontWeight: FontWeight.w400
        )
    ),



  );
}

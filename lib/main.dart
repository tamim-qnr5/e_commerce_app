
import 'package:commerce_app/ui/MyTheme.dart';
import 'package:commerce_app/ui/auth/Login/login_screen.dart';
import 'package:commerce_app/ui/auth/Register_screen/Register_screen.dart';
import 'package:commerce_app/ui/home/Home_Screen.dart';
import 'package:commerce_app/ui/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoginScreen.routeName,
      routes: {
        SplashScreen.routeName:(context) => SplashScreen(),
        RegisterScreen.routeName:(context) => RegisterScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),

      },
      debugShowCheckedModeBanner: false,
      theme: MyTheme.Theme,
    );
  }
}



import 'package:flutter/material.dart';
import 'package:handyman/loginScreen.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Handyman Application',
      home: MySplash(),
    );
  }
}

class MySplash extends StatefulWidget {
  const MySplash({super.key});

  @override
  State<MySplash> createState() => _MySplashState();
}

class _MySplashState extends State<MySplash> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      backgroundColor: Colors.white,
      seconds: 3,
      styleTextUnderTheLoader: const TextStyle(color: Colors.white),
      image: Image.asset('assets/images/hml.png'),
      navigateAfterSeconds: LoginScreen,
      loaderColor: Colors.black,
      photoSize: 100.0,
    );
    ;
  }
}

import 'dart:async';

import 'package:flutter/material.dart';

import '../ui/home/home_Screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routName = "SplashScreen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routName);
    });
    return Image.asset("assets/images/splashScreen.png");
  }
}

import 'dart:async';

import 'package:application_testing/core/provider/app_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../ui/home/home_Screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routName = "SplashScreen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    Timer(const Duration(seconds: 4), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routName);
    });
    return Image.asset(appProvider.getSplashScreenPathName());
  }
}

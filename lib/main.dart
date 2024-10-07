import 'package:flutter/material.dart';

import 'core/splash_screen.dart';
import 'core/theme_application.dart';
import 'ui/home/home_Screen.dart';

void main() {
  runApp(const IslamiApplication());
}

class IslamiApplication extends StatelessWidget {
  const IslamiApplication({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      initialRoute: SplashScreen.routName,
      routes: {
        SplashScreen.routName: (_) => const SplashScreen(),
        HomeScreen.routName: (_) => const HomeScreen(),
      },
    );
  }
}

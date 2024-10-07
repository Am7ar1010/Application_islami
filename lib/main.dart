import 'package:application_testing/ui/teps/hadith%20tep/hadith_details.dart';
import 'package:application_testing/ui/teps/quran%20tep/sura_details.dart';
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
        SuraDetails.routName: (_) => SuraDetails(),
        HadithDetails.routName: (_) => const HadithDetails()
      },
    );
  }
}

import 'package:application_testing/core/provider/app_provider.dart';
import 'package:application_testing/ui/teps/hadith%20tep/hadith_details.dart';
import 'package:application_testing/ui/teps/quran%20tep/sura_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'core/splash_screen.dart';
import 'core/theme_application.dart';
import 'ui/home/home_Screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppProvider(), child: IslamiApplication()));
}

class IslamiApplication extends StatelessWidget {
  const IslamiApplication({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider = Provider.of<AppProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ApplicationTheme.lightTheme,
      darkTheme: ApplicationTheme.darkTheme,
      themeMode: appProvider.currentTheme,
      initialRoute: SplashScreen.routName,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'),
      ],
      locale: Locale(appProvider.currentLanguage),
      routes: {
        SplashScreen.routName: (_) => const SplashScreen(),
        HomeScreen.routName: (_) => const HomeScreen(),
        SuraDetails.routName: (_) => SuraDetails(),
        HadithDetails.routName: (_) => const HadithDetails()
      },
    );
  }
}

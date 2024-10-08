import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.dark;
  String currentLanguage = "en";

  void toggleLanguage(String newlanguage) {
    if (newlanguage == currentLanguage) return;
    currentLanguage = newlanguage;
    notifyListeners();
  }

  void toggleTheme(ThemeMode newTheme) {
    if (newTheme == currentTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }

  String getSplashScreenPathName() {
    return currentTheme == ThemeMode.light
        ? "assets/images/splashScreen.png"
        : "assets/images/splashScreen_dark.png";
  }

  String getBackgroundPathName() {
    return currentTheme == ThemeMode.light
        ? "assets/images/background.png"
        : "assets/images/background_dark.png";
  }
}

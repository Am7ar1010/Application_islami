import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static bool isDark = true;
  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        onPrimary: const Color(0xff242424),
        primary: const Color(0xffB7935F),
        seedColor: const Color(0xff242424),
        secondary: const Color(0xffF8F8F8),
        onSecondary: const Color(0xffF8F8F8),
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color(0xff242424)),
        titleMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: const Color(0xff242424)),
        titleSmall: GoogleFonts.inter(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: const Color(0xff242424)),
        bodySmall: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: const Color(0xff242424)),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(
          size: 20,
          color: Color(0xff242424),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color(0xff242424)),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xffB7935F),
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: Color(0xff242424),
          size: 50,
        ),
        selectedItemColor: Color(0xff242424),
        unselectedIconTheme: IconThemeData(
          color: Color(0xffF8F8F8),
          size: 35,
        ),
        unselectedItemColor: Color(0xffF8F8F8),
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
      dividerTheme: const DividerThemeData(
        thickness: 2,
        color: Color(0xffB7935F),
        space: 5,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff0b7935f),
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
      ),
      iconTheme: const IconThemeData(
        color: Color(0xffB7935F),
        size: 40,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Color(0xffB7935F),
      ));
  static ThemeData darkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        onPrimary: const Color(0xffFACC1D),
        primary: const Color(0xffFACC1D),
        seedColor: const Color(0xff141A2E),
        secondary: const Color(0xffFFFFFF),
        onSecondary: const Color(0xff141A2E),
      ),
      textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color(0xffFFFFFF)),
        titleMedium: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: const Color(0xffFFFFFF)),
        titleSmall: GoogleFonts.inter(
            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: const Color(0xffFFFFFF)),
        bodySmall: GoogleFonts.inter(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: const Color(0xffFFFFFF)),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: const IconThemeData(
          size: 20,
          color: Color(0xffFFFFFF),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: const Color(0xffFFFFFF)),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xff141A2E),
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: Color(0xffFACC1D),
          size: 50,
        ),
        selectedItemColor: Color(0xffFACC1D),
        unselectedIconTheme: IconThemeData(
          color: Color(0xffF8F8F8),
          size: 35,
        ),
        unselectedItemColor: Color(0xffF8F8F8),
        showSelectedLabels: true,
        showUnselectedLabels: false,
      ),
      dividerTheme: const DividerThemeData(
        thickness: 2,
        color: Color(0xffFACC1D),
        space: 5,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff0b7935f),
          padding: const EdgeInsets.all(20),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
      ),
      iconTheme: const IconThemeData(
        color: Color(0xffFACC1D),
        size: 40,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Color(0xff141A2E),
      ));
}

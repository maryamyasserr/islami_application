import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static Color primaryLightMode = Color(0xffB7935F);
  static Color primaryDarkMode = Color(0xff141A2E);
  static Color secondaryDarkMode = Color(0xffFACC1D);
  static Color selectedColor = Color(0xff242424);
  static Color selectedDarkColor = Color(0xffFACC1D);
  static Color unselectedColor = Color(0xffFFFFFF);

  static bool isDark = true ;

  static ThemeData lightmode = ThemeData(
      primaryColor: primaryLightMode,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryLightMode,
        primary: primaryLightMode,
        onSecondary: selectedColor,
        onPrimary: primaryLightMode,
        onBackground: const Color(0xffF8F8F8),
      ),
      dividerColor: primaryLightMode,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: selectedColor,
          unselectedItemColor: unselectedColor,
          backgroundColor: primaryLightMode),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.elMessiri(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          titleMedium: GoogleFonts.elMessiri(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
          titleSmall: GoogleFonts.elMessiri(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.normal)));
  static ThemeData darkMode = ThemeData(
      primaryColor: primaryDarkMode,
      colorScheme: ColorScheme.fromSeed(
          seedColor: primaryDarkMode,
          primary: primaryDarkMode,
          onSecondary: secondaryDarkMode,
          onPrimary: secondaryDarkMode,
          onBackground: primaryDarkMode,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true),
      dividerColor: secondaryDarkMode,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: selectedDarkColor,
          unselectedItemColor: unselectedColor,
          backgroundColor: primaryDarkMode),
      textTheme: TextTheme(
          titleLarge: GoogleFonts.elMessiri(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
          titleMedium: GoogleFonts.elMessiri(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          titleSmall: GoogleFonts.elMessiri(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.normal)),

      bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: primaryDarkMode.withOpacity(0.9),
  )
  );
}

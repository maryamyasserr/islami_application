import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static Color primaryLightMode = Color(0xffB7935F);
  static Color selectedColor = Color(0xff242424);
  static Color unselectedColor = Color(0xffFFFFFF);
  static ThemeData lightmode = ThemeData(
      primaryColor: primaryLightMode,
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
      primaryColor: primaryLightMode,
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
}

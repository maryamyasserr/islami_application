import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.dark;
  String currentLocale = 'en';
  changeTheme(ThemeMode newTheme){
    if (currentTheme == newTheme) return;
    currentTheme = newTheme;
    notifyListeners();
  }
  changeLanguage (String newLanguage){
    if(currentLocale == newLanguage) return;
    currentLocale = newLanguage;
    notifyListeners();
  }

  bool isDark (){
    return currentTheme == ThemeMode.dark;
  }

  String backgroundImage(){
    return isDark ()
        ? 'assets/images/background_dark.png'
        : 'assets/images/main_background.png';
  }

}
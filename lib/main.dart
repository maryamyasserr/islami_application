import 'package:flutter/material.dart';
import 'package:islami_app/home/home_screen.dart';
import 'package:islami_app/home/quran/quran_details.dart';
import 'package:islami_app/my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          QuranDetails.routeName: (context) => QuranDetails(),
        },
        theme: MyTheme.lightmode);
  }

}

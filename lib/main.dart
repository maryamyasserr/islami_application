import 'package:flutter/material.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:islami_app/home/hadeth/hadeth_details.dart';
import 'package:islami_app/home/home_screen.dart';
import 'package:islami_app/home/quran/quran_details.dart';
import 'package:islami_app/my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=> AppProvider() ,child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var appProvider =Provider.of<AppProvider>(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme :MyTheme.lightmode,
        darkTheme: MyTheme.darkMode,
        themeMode: appProvider.currentTheme,
        initialRoute: HomeScreen.routeName,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        locale: Locale(appProvider.currentLocale),
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          QuranDetails.routeName: (context) => QuranDetails(),
          HadethDetails.routeName: (context) => HadethDetails()
        },
    );
  }

}

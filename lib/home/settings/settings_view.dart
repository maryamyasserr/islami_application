import 'package:flutter/material.dart';
import 'package:islami_app/home/settings/widget/language_bottom_sheet_widget.dart';
import 'package:islami_app/home/settings/widget/settings_item.dart';
import 'package:islami_app/home/settings/widget/theme_bottom_sheet_widget.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../core/provider/app_provider.dart';


class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var mediaQuery = MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);
    var locale = AppLocalizations.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16 , vertical: 80),
      child: Column(
          children: [
            SettingsItem(
              selectedOption: appProvider.currentLocale == 'en' ?'English' : 'عربي',
              settingsTitle: locale!.language ,
              onOptionTap: (){
                showLanguageBottomSheet(context);
              },
            ),
            SizedBox(height: 25),
            SettingsItem(
              selectedOption: appProvider.isDark() ? locale!.dark : locale!.light,
              settingsTitle: locale.theme_mode,
              onOptionTap: (){
                showThemeBottomSheet(context);
              },
            ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet(context) {
    showModalBottomSheet(context: context, builder: (context)=> LanguageBottomSheetWidget());
  }

  void showThemeBottomSheet(context) {
    showModalBottomSheet(context: context, builder: (context)=> ThemeBottomSheetWidget()

    );
  }
}

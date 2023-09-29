import 'package:flutter/material.dart';
import 'package:islami_app/home/settings/widget/language_bottom_sheet_widget.dart';
import 'package:islami_app/home/settings/widget/settings_item.dart';


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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12 , vertical: 80),
      child: Column(
          children: [
            SettingsItem(
              selectedOption: 'Endlish',
              settingsTitle: 'Language',
              onOptionTap: (){
                showLanguageBottomSheet(context);
              },
            ),
            SizedBox(height: 25),
            SettingsItem(
              selectedOption: 'Light',
              settingsTitle: 'Theme Mode',
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
    showModalBottomSheet(context: context, builder: (context)=> Container(
      color: Color(0xffB7935F),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:islami_app/home/settings/widget/selected_option_widget.dart';
import 'package:islami_app/home/settings/widget/unselected_option_widget.dart';

class LanguageBottomSheetWidget extends StatelessWidget {
  const LanguageBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
        decoration: BoxDecoration(
          color: theme.primaryColor.withOpacity(0.8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            SelectedOptionWidget(selectedTitle: 'English'),
            SizedBox(height: 20),
            UnselectedOptionWidget(unselectedTitle: 'عربي')
          ],
        ),

    );
  }
}

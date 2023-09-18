import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(height: 155),
      Image.asset(
        'assets/images/radio_logo.png',
        height: 222,
        width: 412,
      ),
      SizedBox(height: 30),
      Text(
        'إذاعة القرآن الكريم',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      SizedBox(height: 80),
      Image.asset(
        'assets/images/play_icon.png',
        height: 36,
        width: 218.5,
      ),
    ]);
  }
}

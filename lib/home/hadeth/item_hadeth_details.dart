import 'package:flutter/material.dart';

class ItemHadethDetails extends StatelessWidget {
  String content;

  ItemHadethDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Text(
      content,
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondary,
        height: 2
      ),
      textAlign: TextAlign.center,
    );
  }
}

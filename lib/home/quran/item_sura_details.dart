import 'package:flutter/material.dart';

class ItemSuraDetails extends StatelessWidget {
  String content;
  int index;

  ItemSuraDetails({required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Text(
      '$content{${index + 1}',
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onSecondary,
        height: 2
      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}

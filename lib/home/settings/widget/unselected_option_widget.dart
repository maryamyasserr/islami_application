import 'package:flutter/material.dart';

class UnselectedOptionWidget extends StatelessWidget {
  final String unselectedTitle;
  const UnselectedOptionWidget({super.key, required this.unselectedTitle});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.all(14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            unselectedTitle,
            style: theme.textTheme.titleMedium,
          ),
          Icon(
            Icons.check_rounded,
            size: 35,
          )
        ],
      ),
    );
  }
}

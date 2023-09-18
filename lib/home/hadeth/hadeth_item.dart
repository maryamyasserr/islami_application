import 'package:flutter/material.dart';

import 'hadeth_details.dart';
import 'hadeth_tab.dart';

class HadethItem extends StatelessWidget {
  Hadeth hadeth;

  HadethItem({
    super.key,
    required this.hadeth,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: InkWell(
          onTap: () {
            Navigator.of(context)
                .pushNamed(HadethDetails.routeName, arguments: hadeth);
          },
          child: Text(
            hadeth.title,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        )),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami_app/home/quran/quran_details.dart';

class QuranItem extends StatelessWidget {
  final String suraName;
  final String suraNumber;
  final int index;

  const QuranItem(
      {super.key,
      required this.suraName,
      required this.suraNumber,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            suraNumber,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: 3,
          height: 45,
          color: Theme.of(context).primaryColor,
        ),
        Expanded(
            child: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(QuranDetails.routeName,
                arguments: SuraDetails(name: suraName, index: index));
          },
          child: Text(
            suraName,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
        )),
      ],
    );
  }
}

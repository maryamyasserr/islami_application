import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/provider/app_provider.dart';
import 'package:provider/provider.dart';

import '../../my_theme.dart';
import 'item_sura_details.dart';

class QuranDetails extends StatefulWidget {
  static const String routeName = 'QuranDetails';

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    var appProvider = Provider.of<AppProvider>(context);
    if (verses.isEmpty) {
      loadfile(args.index);
    }

    return Stack(children: [
      Image.asset(
        appProvider.backgroundImage(),
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            '${args.name}',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.height * 0.09,
            horizontal: MediaQuery.of(context).size.width * 0.06,
          ),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          decoration: BoxDecoration(
            color: theme.colorScheme.onBackground.withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    args.name,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: theme.colorScheme.onSecondary
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.play_circle,
                    size: 33,
                    color: theme.colorScheme.onSecondary,
                  )
                ],
              ),
              Divider(
                thickness: 2,
                endIndent: 30,
                indent: 30,
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: ((context, index) {
                    return ItemSuraDetails(
                        content: verses[index], index: index);
                  }),
                  itemCount: verses.length,
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }

  void loadfile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {});
  }
}

class SuraDetails {
  String name;
  int index;

  SuraDetails({required this.name, required this.index});
}

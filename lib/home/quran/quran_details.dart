import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    if (verses.isEmpty) {
      loadfile(args.index);
    }

    return Stack(children: [
      Image.asset(
        'assets/images/main_background.png',
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
            color: Color(0xffF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    args.name,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.play_circle,
                    size: 33,
                    color: Colors.black,
                  )
                ],
              ),
              Divider(
                color: Theme.of(context).primaryColor,
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

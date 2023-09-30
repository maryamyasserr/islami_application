import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/home/hadeth/hadeth_item.dart';

class HadethTab extends StatefulWidget {
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> hadethLines = [];

  @override
  Widget build(BuildContext context) {
    if (hadethLines.isEmpty) {
      loadHadethFile();
    }
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadeth_icon.png')),
        Divider(
          thickness: 3,
        ),
        Row(
          children: [
            Expanded(
                child: Text(
              'الأحاديث',
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ))
          ],
        ),
        Divider(
          thickness: 3,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 1,
              );
            },
            itemBuilder: (context, index) {
              return HadethItem(
                hadeth: hadethLines[index],
              );
            },
            itemCount: hadethLines.length,
          ),
        )
      ],
    );
  }

  void loadHadethFile() async {
    String hadethContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> ahadethList = hadethContent.split('#\r\n');
    for (int i = 0; i < ahadethList.length; i++) {
      List<String> ahadethLines = ahadethList[i].split('\n');
      String hadethTitle = ahadethLines[0];
      ahadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(content: ahadethLines, title: hadethTitle);
      hadethLines.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.content, required this.title});
}

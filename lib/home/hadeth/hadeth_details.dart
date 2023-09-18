import 'package:flutter/material.dart';

import 'hadeth_tab.dart';
import 'item_hadeth_details.dart';

class HadethDetails extends StatefulWidget {
  static const String routeName = 'HadethDetails';

  @override
  State<HadethDetails> createState() => _HadethDetailsState();
}

class _HadethDetailsState extends State<HadethDetails> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

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
            'إسلامي',
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
                    '${args.title}',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(width: 4),
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
                    return ItemHadethDetails(content: args.content[index]);
                  }),
                  itemCount: args.content.length,
                ),
              ),
            ],
          ),
        ),
      )
    ]);
  }
}

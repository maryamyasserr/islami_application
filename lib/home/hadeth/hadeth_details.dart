import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/provider/app_provider.dart';
import '../../my_theme.dart';
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
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var appProvider = Provider.of<AppProvider>(context);

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
            color: theme.colorScheme.onBackground.withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${args.title}',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: theme.colorScheme.onSecondary
                    ),
                  ),
                  SizedBox(width: 4),
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

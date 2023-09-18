import 'package:flutter/material.dart';

class SebhaTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
          child: Image.asset(
        'assets/images/sebha_logo.png',
        height: 312,
        width: 232,
      )),
      SizedBox(height: 50),
      Text(
        'عدد التسبيحات',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      SizedBox(height: 20),
      Container(
        height: 77,
        width: 69,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xe8cba56e), borderRadius: BorderRadius.circular(25)),
        child: Center(
            child: Text(
          '30',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        )),
      ),
      SizedBox(height: 10),
      Container(
        height: 50,
        width: 137,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(0xe8cba56e), borderRadius: BorderRadius.circular(25)),
        child: Center(
            child: Text(
          'سبحان الله',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
        )),
      )
    ]);
  }
}

import 'package:flutter/material.dart';
import 'package:vervit_app/constants.dart';

class AboutUs extends StatelessWidget {

  //TODO Finish the description and add any pictures/supporting information
  final String description = 'Vervit je studentský neziskový projekt, zaměřený na rozšířování technických dovedností mezi staršími lidmi. Jsme skupinou nadšených studentů z gymnázia Nový PORG v Praze a rádi bychom pomáhali lidem v našem okolí.  ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorTeal,
        title: Text('O nás', style: TextStyle(color: Colors.black),),
      ),
      body: Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                description,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
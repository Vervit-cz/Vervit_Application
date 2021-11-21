import 'package:flutter/material.dart';
import 'package:vervit_app/constants.dart';
import 'info_card.dart';

class AboutUs extends StatelessWidget {

  final String description = 'Vervit je studentský neziskový projekt, zaměřený na rozšířování technických dovedností mezi staršími lidmi. Jsme skupinou nadšených studentů z gymnázia PORG v Praze a rádi bychom pomohli lidem v našem okolí.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorTeal,
        title: Text('O nás', style: TextStyle(color: Colors.black),),
      ),
      body: Column(
        children: <Widget>[ 
          Card(
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
          Expanded(
            child: ListView.builder(
              itemCount: info.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index){
                return Container(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InfoCard(
                      name: info[index]['name'],
                      info: info[index]['info'],
                      photo: info[index]['photo'],
                    ),
                  ),
                );
              },
            ),
          ),
        ]  
      ),
    );
  }
}
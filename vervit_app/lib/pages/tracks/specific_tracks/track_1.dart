import 'package:flutter/material.dart';

class TrackOne extends StatefulWidget {
  @override
  _TrackOneState createState() => _TrackOneState();
}

List<String> videos = [
  'Vypínání počítače', 
  'Start menu', 
  'Práce s myší', 
  'Práce s klávesnicí', 
  'Práce s touchpadem', 
  'Základní nastavení', 
  'Spodní lišta', 
  'Práce se soubory', 
  'Práce se složkami'
];

class _TrackOneState extends State<TrackOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('První kroky s počítačem'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget> [
          Card(
            margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Pro nejlepší výsledek doporučujeme procházet jednotlivými videi tohoto kurzu v daném pořadí. Jsou tak seřazeny záměrně, aby na sebe pokud možno co nejvíc navazovaly.',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[800],
                      height: 1.15,
                    ),
                  ),
                  Divider(
                    height: 30.0,
                    thickness: 3.0,
                  ),
                  Text(
                    'V tomto kurzu představujeme úplné základy práce s počítačem. Nepotřebujete k němu žádnou přechozí znalost, pouze zapnutý stolní počítač nebo notebook.',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[800],
                      height: 1.15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: videos.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListTile(
                      title: Text(
                        videos[index],
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {},
                      tileColor: Colors.white,
                    ),
                  ),
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
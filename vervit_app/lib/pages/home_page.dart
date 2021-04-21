import 'package:flutter/material.dart';
import 'package:vervit_app/components/reusable_card.dart';
import 'package:vervit_app/components/iconCard_content.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left:15.0),
              child: Text(
                'Vyberte si, co se chcete naučit:',
                style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              color: Color(0xFF6DA8DA),
              onPress: () {
                Navigator.pushNamed(context, '/computer');
              },
              cardChild: IconCardContent(
                text: 'Počítač',
                icon: Icons.computer,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              color: Color(0xFF6DA8DA),
              onPress: () {
                Navigator.pushNamed(context, '/phone');
              },
              cardChild: IconCardContent(
                text: 'Mobil',
                icon: Icons.phone_android,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

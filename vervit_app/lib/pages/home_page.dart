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
              child: ReusableCard(
                color: Color(0xFF6DA8DA),
                onPress: () {
                  Navigator.pushNamed(context, '/computer');
                },
                cardChild:
                    IconCardContent(
                      text: 'Computer',
                      icon: Icons.computer,
                    ),
                ),
              ),
          Expanded(
              child: ReusableCard(
                color: Color(0xFF6DA8DA),
                onPress: () {
                  Navigator.pushNamed(context, '/phone');
                },
                cardChild:
                IconCardContent(
                  text: 'Mobile',
                  icon: Icons.phone_android,
                ),
              ),
          ),
        ],
      ),
    );
  }
}
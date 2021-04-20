import 'package:flutter/material.dart';
import 'package:vervit_app/components/reusable_card.dart';
import 'package:vervit_app/components/iconCard_content.dart';

class PhonePage extends StatefulWidget {
  @override
  _PhonePageState createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Hello World!'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ReusableCard(
                color: Color(0xFF6DA8DA),
                onPress: () {
                  //TODO navigator
                },
                cardChild:
                IconCardContent(
                  text: 'Android phone',
                  icon: Icons.phone_android_sharp,
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: Color(0xFF6DA8DA),
                onPress: () {
                  //TODO navigator
                },
                cardChild:
                IconCardContent(
                  text: 'iPhone',
                  icon: Icons.phone_iphone_rounded,
                ),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
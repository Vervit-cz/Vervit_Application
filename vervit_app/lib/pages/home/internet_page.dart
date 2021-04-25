import 'package:flutter/material.dart';
import 'package:vervit_app/components/reusable_card.dart';
import 'package:vervit_app/components/iconCard_content.dart';
import 'package:vervit_app/constants.dart';

class InternetPage extends StatefulWidget {
  @override
  _InternetPageState createState() => _InternetPageState();
}

class _InternetPageState extends State<InternetPage> {
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
                color: kColorLightBlue,
                onPress: () {
                },
                cardChild:
                IconCardContent(
                  text: 'Email',
                  icon: Icons.email,
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kColorLightBlue,
                onPress: () {
                },
                cardChild: IconCardContent(
                  text: '...',
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

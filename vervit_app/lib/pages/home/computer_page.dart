import 'package:flutter/material.dart';
import 'package:vervit_app/components/reusable_card.dart';
import 'package:vervit_app/components/iconCard_content.dart';
import 'package:vervit_app/constants.dart';


class ComputerPage extends StatefulWidget {
  @override
  _ComputerPageState createState() => _ComputerPageState();
}

class _ComputerPageState extends State<ComputerPage> {
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
                  Navigator.pushNamed(context, '/computerBasics');
                },
                cardChild:
                IconCardContent(
                  text: 'Základy',
                  icon: Icons.info,
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: Color(0xFF6DA8DA),
                onPress: () {
                 Navigator.pushNamed(context, '/internet');
                },
                cardChild:
                IconCardContent(
                  text: 'Internet',
                  icon: Icons.wifi,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
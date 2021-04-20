import 'package:flutter/material.dart';
import 'package:vervit_app/components/reusable_card.dart';
import 'package:vervit_app/components/iconCard_content.dart';


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
                color: Color(0xFF6DA8DA),
                onPress: () {
                  //TODO navigator
                },
                cardChild:
                IconCardContent(
                  text: 'PC',
                  icon: Icons.computer_rounded,
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
                  text: 'MacOS',
                  icon: Icons.desktop_mac_sharp,
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
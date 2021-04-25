import 'package:flutter/material.dart';
import 'package:vervit_app/components/reusable_card.dart';
import 'package:vervit_app/components/iconCard_content.dart';
import 'package:vervit_app/constants.dart';
class AndroidPhonePage extends StatefulWidget {
  @override
  _AndroidPhonePageState createState() => _AndroidPhonePageState();
}

class _AndroidPhonePageState extends State<AndroidPhonePage> {
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
                  Navigator.pushNamed(context, '/androidBasics');
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
                color: kColorLightBlue,
                onPress: () {
                  Navigator.pushNamed(context, '/androidApps');
                },
                cardChild:
                IconCardContent(
                  text: 'Aplikace',
                  icon: Icons.apps,
                ),
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kColorLightBlue,
                onPress: () {
                  Navigator.pushNamed(context, '/androidSocial');
                },
                cardChild:
                IconCardContent(
                  text: 'Sociální sítě',
                  icon: Icons.people,
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}

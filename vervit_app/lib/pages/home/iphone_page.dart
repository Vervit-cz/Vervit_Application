import 'package:flutter/material.dart';
import 'package:vervit_app/components/reusable_card.dart';
import 'package:vervit_app/components/iconCard_content.dart';
import 'package:vervit_app/constants.dart';

class IphonePage extends StatefulWidget {
  @override
  _IphonePageState createState() => _IphonePageState();
}

class _IphonePageState extends State<IphonePage> {
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
                  Navigator.pushNamed(context, '/iphoneBasics');
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
                  Navigator.pushNamed(context, '/iphoneApps');
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
                  Navigator.pushNamed(context, '/iphoneSocial');
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

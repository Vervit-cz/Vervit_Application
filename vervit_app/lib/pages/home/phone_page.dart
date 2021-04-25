import 'package:flutter/material.dart';
import 'package:vervit_app/components/reusable_card.dart';
import 'package:vervit_app/components/iconCard_content.dart';
import 'package:vervit_app/constants.dart';

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
              child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left:15.0, right: 15.0, top:10.0),
                child: Text(
                  'Vyberte si model:',
                  style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: ReusableCard(
                color: kColorLightBlue,
                onPress: () {
                    Navigator.pushNamed(context, '/androidPhone');
                },
                cardChild:
                IconCardContent(
                  text: 'Android',
                  icon: Icons.phone_android_rounded,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: ReusableCard(
                color: kColorLightBlue,
                onPress: () {
                  Navigator.pushNamed(context, '/iphone');
                },
                cardChild:
                IconCardContent(
                  text: 'iPhone',
                  icon: Icons.phone_iphone_rounded,
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
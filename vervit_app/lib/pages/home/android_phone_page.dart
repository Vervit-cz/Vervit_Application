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
                text: 'Základy',
                icon: Icons.info,
                navigateTo:'/androidBasics',
              ),
            ),
            Expanded(
              child: ReusableCard(
                text: 'Aplikace',
                icon: Icons.apps,
                navigateTo:'/androidApps',
              ),
            ),
            Expanded(
              child: ReusableCard(
                text: 'Sociální sítě',
                icon: Icons.people,
                navigateTo:'/androidSocial',
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
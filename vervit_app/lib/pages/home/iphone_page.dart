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
                text: 'Základy',
                icon: Icons.info,
                navigateTo:'/iphoneBasics',
              ),
            ),
            Expanded(
              child: ReusableCard(
                text: 'Aplikace',
                icon: Icons.apps,
                navigateTo:'/iphoneApps',
              ),
            ),
            Expanded(
              child: ReusableCard(
                text: 'Sociální sítě',
                icon: Icons.people,
                navigateTo:'/iphoneSocial',
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
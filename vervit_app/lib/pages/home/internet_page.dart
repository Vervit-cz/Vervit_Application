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
                text: 'Email',
                icon: Icons.email,
              ),
            ),
            Expanded(
              child: ReusableCard(
                text: '...',
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
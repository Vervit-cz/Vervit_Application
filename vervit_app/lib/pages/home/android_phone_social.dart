import 'package:flutter/material.dart';

class AndroidPhoneSocialPage extends StatefulWidget {
  @override
  _AndroidPhoneSocialPageState createState() => _AndroidPhoneSocialPageState();
}

class _AndroidPhoneSocialPageState extends State<AndroidPhoneSocialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Hello World!'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Android sociální sítě',
        ),
      ),
    );
  }
}

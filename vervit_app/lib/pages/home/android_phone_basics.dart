import 'package:flutter/material.dart';

class AndroidPhoneBasicsPage extends StatefulWidget {
  @override
  _AndroidPhoneBasicsPageState createState() => _AndroidPhoneBasicsPageState();
}

class _AndroidPhoneBasicsPageState extends State<AndroidPhoneBasicsPage> {
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
          'Android základy',
        ),
      ),
    );
  }
}
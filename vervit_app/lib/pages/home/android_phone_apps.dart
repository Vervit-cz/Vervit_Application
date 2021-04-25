import 'package:flutter/material.dart';

class AndroidPhoneAppsPage extends StatefulWidget {
  @override
  _AndroidPhoneAppsPageState createState() => _AndroidPhoneAppsPageState();
}

class _AndroidPhoneAppsPageState extends State<AndroidPhoneAppsPage> {
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
          'Android aplikace',
        ),
      ),
    );
  }
}

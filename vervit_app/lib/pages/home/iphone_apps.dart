import 'package:flutter/material.dart';

class IphoneAppsPage extends StatefulWidget {
  @override
  _IphoneAppsPageState createState() => _IphoneAppsPageState();
}

class _IphoneAppsPageState extends State<IphoneAppsPage> {
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
          'iPhone aplikace',
        ),
      ),
    );
  }
}
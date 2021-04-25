import 'package:flutter/material.dart';

class IphoneSocialPage extends StatefulWidget {
  @override
  _IphoneSocialPageState createState() => _IphoneSocialPageState();
}

class _IphoneSocialPageState extends State<IphoneSocialPage> {
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
          'iPhone sociální sítě',
        ),
      ),
    );
  }
}

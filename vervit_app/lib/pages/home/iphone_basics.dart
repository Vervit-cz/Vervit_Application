import 'package:flutter/material.dart';

class IphoneBasicsPage extends StatefulWidget {
  @override
  _IphoneBasicsPageState createState() => _IphoneBasicsPageState();
}

class _IphoneBasicsPageState extends State<IphoneBasicsPage> {
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
          'iPhone základy',
        ),
      ),
    );
  }
}
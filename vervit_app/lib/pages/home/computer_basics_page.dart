import 'package:flutter/material.dart';

class ComputerBasicsPage extends StatefulWidget {
  @override
  _ComputerBasicsPageState createState() => _ComputerBasicsPageState();
}

class _ComputerBasicsPageState extends State<ComputerBasicsPage> {
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
          'Základy práce s počítačem',
        ),
      ),
    );
  }
}
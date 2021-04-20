import 'package:flutter/material.dart';

class TrackTwo extends StatefulWidget {
  @override
  _TrackTwoState createState() => _TrackTwoState();
}

class _TrackTwoState extends State<TrackTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Track 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Write here',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
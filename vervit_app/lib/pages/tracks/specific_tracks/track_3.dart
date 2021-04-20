import 'package:flutter/material.dart';

class TrackThree extends StatefulWidget {
  @override
  _TrackThreeState createState() => _TrackThreeState();
}

class _TrackThreeState extends State<TrackThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Track 3'),
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
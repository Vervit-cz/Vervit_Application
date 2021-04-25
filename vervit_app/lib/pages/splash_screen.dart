import 'dart:async';
import 'package:flutter/material.dart';
import 'package:vervit_app/main.dart';
import 'package:vervit_app/constants.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  final splashDelay = 5;
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: splashDelay),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kColorTeal,
      body: SafeArea(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            child: Text(
              'VERVIT',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0,),
            ),
            //TODO add image asset for splash
          ),
        ),
      ),
    );
  }

}
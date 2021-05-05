import 'dart:async';
import 'package:flutter/material.dart';
import 'package:vervit_app/main.dart';
import 'package:vervit_app/constants.dart';
import 'package:splashscreen/splashscreen.dart';

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
    return SplashScreen(
      backgroundColor: kColorTeal,
      seconds: splashDelay,
      title:Text(
        'VERVIT',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
      ),
      //TODO add image asset for splash
      loaderColor: Colors.black,
    );
  }

}
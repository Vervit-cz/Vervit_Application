import 'package:flutter/material.dart';

class IconCardContent extends StatelessWidget {
  IconCardContent({this.text, this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 150.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
            text,
            style: TextStyle(
              fontSize: 25.0,
              color: Colors.black,
            ),
        ),
      ],
    );
  }
}
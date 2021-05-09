import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IconCardContent extends StatelessWidget {
  IconCardContent({this.text, this.icon, this.textSize, this.iconSize});
  final String text;
  final IconData icon;
  final double textSize;
  final double iconSize;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
          SizedBox(
            width: 50.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    fontSize: textSize,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                )
        ),
            ),
          ),
        SizedBox(
          height: 20.0,
        ),
        Icon(
          icon,
          size: iconSize,
        ),
      ],
    );
  }
}

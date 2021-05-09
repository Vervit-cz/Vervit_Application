import 'package:flutter/material.dart';
import 'iconCard_content.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.text, this.icon, this.navigateTo, this.onTap, this.color, this.textSize, this.iconSize});
  final String navigateTo;
  final String text;
  final double textSize;
  final IconData icon;
  final double iconSize;
  final Function onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
    },
      child: Expanded(
        child: Card(
          color: color,
          child: Container(
            child: IconCardContent(
              text: text,
              icon: icon,
              textSize: textSize,
              iconSize: iconSize,
            ),
          ),
          margin: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          elevation: 2,
          ),
        ),
    );
  }
}
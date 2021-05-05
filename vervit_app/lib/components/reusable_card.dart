import 'package:flutter/material.dart';
import 'iconCard_content.dart';
import 'package:vervit_app/constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.text, this.icon, this.navigateTo, this.onTap});
  final String navigateTo;
  final String text;
  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
    Navigator.pushNamed(context, navigateTo);
    },
      child: Expanded(
        child: Card(
          color: kColorLightBlue,
          child: Container(
            height: 120.0,
            child: IconCardContent(
              text: text,
              icon: icon,
            ),
          ),
          margin: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          elevation: 5,
          ),
        ),
    );
  }
}
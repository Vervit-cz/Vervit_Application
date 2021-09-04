import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class ReusableCard extends StatelessWidget {
  ReusableCard({this.text, this.icon, this.navigateTo, this.onTap, this.color, this.textSize, this.iconSize});
  final String navigateTo;
  final String text;
  final double textSize;
  final IconData icon;
  double iconSize;
  final Function onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
    },
        child: Card(
          color: color,
          child: Container(
            child: LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxHeight < 185){
                iconSize = iconSize - 20;
              }
              return Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
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
                    SizedBox(
                      height: 20.0,
                    ),
                    Icon(
                        icon,
                        size: iconSize,
                      ),
                  ],
                ),
              );
            }),
          ),
          margin: EdgeInsets.all(15.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          elevation: 2,
          ),
    );
  }
}
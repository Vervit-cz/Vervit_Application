import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VideoCard extends StatelessWidget {
  VideoCard({this.description, this.name, this.onTap});
  final String name;
  final String description;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onTap();
      },
      child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Icon(
                    FontAwesomeIcons.photoVideo,
                    size: 50.0,
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 20.0, 5.0, 5.0),
                      alignment: Alignment.centerLeft,
                        child: Text(
                          name,
                          textAlign: TextAlign.left ,
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                        ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 15.0),
                      alignment: Alignment.centerLeft,
                        child: Text(
                          description,
                          textAlign: TextAlign.left ,
                          style: TextStyle(fontSize: 15.0),
                        ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          margin: EdgeInsets.all(5.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 2,
      ),
    );
  }
}
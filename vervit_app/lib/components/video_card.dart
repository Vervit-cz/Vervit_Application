import 'package:flutter/material.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 5.0),
                alignment: Alignment.centerLeft,
                  child: Text(
                    name,
                    textAlign: TextAlign.left ,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 15.0),
                alignment: Alignment.centerLeft,
                  child: Text(
                    description,
                    textAlign: TextAlign.left ,
                    style: TextStyle(fontSize: 15.0),
                  ),
              ),
            ],
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 2,
      ),
    );
  }
}
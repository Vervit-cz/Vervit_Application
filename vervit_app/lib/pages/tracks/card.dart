import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {

  final String name;
  final String description;
  final Color color;
  final Function onPressed;

  VideoCard({ this.name, this.description, this.color, this.onPressed });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
      child: OutlinedButton(
        onPressed: () {
          onPressed();
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: Colors.black)
                )
            )
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                name,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Divider(
                height: 20.0,
                thickness: 2.0,
                color: color,
              ),
              Text(
                description,
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
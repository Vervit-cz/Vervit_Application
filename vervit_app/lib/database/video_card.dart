import 'package:flutter/material.dart';
import 'video.dart';
import 'package:vervit_app/constants.dart';
import 'package:vervit_app/videoplayer/videoplayer.dart';

class VideoCard extends StatelessWidget {

  final VideoObject video;
  VideoCard({ this.video });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: OutlinedButton(
          onPressed: () {
            VideoPlayer.playVideo(video.number);
            Navigator.push(context, MaterialPageRoute(builder: (context) => Video()));
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(kColorTeal),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      side: BorderSide(color: Colors.black)
                  )
              )
          ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                video.name,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              Divider(
                height: 30.0,
                thickness: 3.0,
              ),
              Text(
                video.description,
                style: TextStyle(
                  fontSize: 16.0,
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
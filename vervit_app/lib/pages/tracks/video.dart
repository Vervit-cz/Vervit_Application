import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:vervit_app/pages/tracks/track.dart';

class VideoChooser {
  static int video = 0;
  static YoutubePlayerController controller;

  static void chooseVideo(int index) {
    video = index;
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(Track.videos[video]['url']),
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
  }
}
class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

bool _isFullScreen = false;
class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: _isFullScreen ? null : AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(Track.videos[VideoChooser.video]['name']),
        centerTitle: true,
      ),
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(controller: VideoChooser.controller),
        onEnterFullScreen: () {
          setState(() {
            _isFullScreen = true;
          });
        },
        onExitFullScreen: () {
          setState(() {
            _isFullScreen = false;
          });
        },
        builder: (context, player) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: player,
              ),
              Card(
                margin: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    Track.videos[VideoChooser.video]['description'],
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[800],
                      height: 1.15,
                    ),
                  )
                )
              )
            ]
          );
        },
      )
    );
  }
}
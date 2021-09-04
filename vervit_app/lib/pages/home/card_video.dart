import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'card_navigation.dart';

class VideoChooser {
  static int video = 0;
  static YoutubePlayerController controller;
  static CardPage page;

  static void chooseVideo(int index, CardPage p) {
    video = index;
    page = p;
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(page.videos[video].videoID),
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
      ),
    );
  }
}
class CardVideo extends StatefulWidget {
  @override
  _CardVideoState createState() => _CardVideoState();
}

bool _isFullScreen = false;
class _CardVideoState extends State<CardVideo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: _isFullScreen ? null : AppBar(
          backgroundColor: VideoChooser.page.pageColor,
          title: Text(VideoChooser.page.videos[VideoChooser.video].name, style: TextStyle(color: Colors.black),),
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
                  Container(
                      margin: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 0.0),
                      child: Text(
                            VideoChooser.page.videos[VideoChooser.video].description,
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.grey[800],
                              height: 1.15,
                            ),
                          )
                  )
                ]
            );
          },
        )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:vervit_app/pages/tracks/track.dart';
import 'package:vervit_app/navigation/tracks_navigation.dart';


class VideoChooser {
  static int video = 0;
  static YoutubePlayerController controller;

  static void chooseVideo(int index) {
    video = index;
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(Track.videos[video]['url']),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        loop: false,
      ),
    );
  }

  static void nextVideo() {
    video += 1;
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(Track.videos[video]['url']),
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        loop: false,
      ),
    );
  }
}
class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

bool _isFullScreen = false;
bool _ended = false;
class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: _isFullScreen ? null : AppBar(
        backgroundColor: Colors.blue[800],
        title: Text(Track.videos[VideoChooser.video]['name']),
        centerTitle: true,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
            _ended = false;
          }),
      ),
      body: _ended ? 
      Column(
        children: [
          GestureDetector(
            child: AspectRatio(
              aspectRatio: 2.15,
              child: Card(
                margin: const EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        (VideoChooser.video < Track.videos.length - 1) ? 'Spustit další video v tomto kurzu': 'Vrátit se na předchozí stránku',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                        ),
                      Text(
                        (VideoChooser.video < Track.videos.length - 1) ? Track.videos[VideoChooser.video + 1]['name'] : tracks[Track.index]['name'],
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),
                      )
                    ],
                  )
                )
              ),
            ),
            onTap: () {
              setState(() {
                if (VideoChooser.video < Track.videos.length - 1) {
                  VideoChooser.nextVideo();
                } else  {
                  Navigator.pop(context);
                }
                _ended = false;
              });
            },
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
      ) : 
      YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: VideoChooser.controller,
          aspectRatio: 2.15,
          onEnded: (metaData) {
            setState(() {
              if (_isFullScreen) {VideoChooser.controller.toggleFullScreenMode();}
              _isFullScreen = false;
              _ended = true;
            });
          },
        ),
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
              Card(
                margin: const EdgeInsets.all(16.0),
                child: player
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
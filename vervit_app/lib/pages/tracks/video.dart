import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:vervit_app/pages/tracks/track.dart';
import 'package:vervit_app/videoplayer/videoplayer.dart';
import 'card.dart';


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
        backgroundColor: Track.color,
        title: Text(
          Track.videos[VideoChooser.video]['name'],
          style: TextStyle(color: Colors.black)
          ),
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
          Card(
            margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                (VideoChooser.video < Track.videos.length - 1) ? 'Kliknutím na tlačítko níže můžete pokračovat na další video.': 'Zde tento kurz končí. Kliknutím na šipku v levém horním rohu se vrátíte na hlavní stránku.',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  height: 1.15,
                ),
              )
            )
          ),
          Container(
            child: (VideoChooser.video < Track.videos.length - 1) ? 
            Container(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: VideoCard(
                  name: Track.videos[VideoChooser.video + 1]['name'],
                  description: Track.videos[VideoChooser.video + 1]['description'], 
                  color: Track.color,
                  onPressed: () { 
                    VideoChooser.chooseVideo(VideoChooser.video + 1);
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Video()));
                    _ended = false;
                  },
                ),
              ),
            ) : null,
          ),
        ]
      ) : 
      YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: VideoChooser.controller,
          aspectRatio: VideoPlayer.calculateDeviceAspectRatio(context),
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
                margin: const EdgeInsets.all(16),
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
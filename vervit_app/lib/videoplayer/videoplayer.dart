import 'package:flutter/material.dart';
import 'package:vervit_app/constants.dart';
import 'package:vervit_app/database/videodatabase.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlayer {

  static int video;
  static YoutubePlayerController controller;

  static void playVideo(int videoIndex) {
    video = videoIndex;
    controller = YoutubePlayerController(
      initialVideoId: Database.videoObjectList[video-1].videoID,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        loop: false,
      ),
    );
  }

  /// Calculates the device aspect ratio, in order to display the video correctly in full screen
  ///
  /// Takes in the widget's [BuildContext] to get the size of the display
  /// Outputs a [double] containing the aspect ratio
  static double calculateDeviceAspectRatio(BuildContext context) {
    /// Screen padding (menus, etc)
    //double paddingHoriz = MediaQuery.of(context).padding.left + MediaQuery.of(context).padding.right;
    //double paddingVert = MediaQuery.of(context).padding.top + MediaQuery.of(context).padding.bottom;

    /// Actual size
    double sizeHoriz = MediaQuery.of(context).size.width; // + 2*paddingHoriz;
    double sizeVert = MediaQuery.of(context).size.height; // + 2*paddingVert;

    return sizeVert / sizeHoriz;
  }

}
class Video extends StatefulWidget {
  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  bool _isFullScreen = false;
  bool _ended = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kColorGray,
        appBar: _isFullScreen ? null : AppBar(
          backgroundColor: kColorTeal,
          title: Text(
              Database.videoObjectList[VideoPlayer.video-1].name,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
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
              Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                  child: Image(
                    image: AssetImage('assets/Závěrečný_snímek.jpg'),
                  )
              ),
              Card(
                  margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
                  child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        Database.videoObjectList[VideoPlayer.video-1].description,
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
            controller: VideoPlayer.controller,
            aspectRatio: VideoPlayer.calculateDeviceAspectRatio(context),
            onEnded: (metaData) {
              setState(() {
                if (_isFullScreen) {VideoPlayer.controller.toggleFullScreenMode();}
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
                            Database.videoObjectList[VideoPlayer.video-1].description,
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
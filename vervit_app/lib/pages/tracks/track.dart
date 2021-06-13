import 'package:flutter/material.dart';
import 'package:vervit_app/constants.dart';
import 'package:vervit_app/pages/tracks/video.dart';
import 'package:vervit_app/navigation/tracks_navigation.dart';
import 'package:vervit_app/components/video_card.dart';

class Track {
  static int index = 0;
  static Color color = kColorLightGreen;
  static List<Map<String, String>> videos;

  static Color chooseAppBarColor() {
    if (tracks[Track.index]['difficulty'] == 'Nízká obtížnost') {
      return kColorLightGreen;
    }
    else if (tracks[Track.index]['difficulty'] == 'Střední obtížnost') {
      return kColorYellow;
    }
    else {
      return kColorRed;
    }
  }

  static void setTrackIndex(int i) {
    index = i;
    videos = tracks[index]['videos'];
    color = chooseAppBarColor();
  }
}
class TrackWidget extends StatefulWidget {
  @override
  _TrackWidgetState createState() => _TrackWidgetState();
}
class _TrackWidgetState extends State<TrackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Track.color,
        title: Text(
          tracks[Track.index]['name'],
          style: TextStyle(color: Colors.black),
          ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget> [
          Card(
            margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    'Pro nejlepší výsledek doporučujeme procházet jednotlivými videi tohoto kurzu v daném pořadí. Jsou tak seřazeny záměrně, aby na sebe pokud možno co nejvíc navazovaly.',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[800],
                      height: 1.15,
                    ),
                  ),
                  Divider(
                    height: 30.0,
                    thickness: 3.0,
                  ),
                  Text(
                    tracks[Track.index]['description'],
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[800],
                      height: 1.15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: ListView.separated(
              itemCount: Track.videos.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index){
                return Container(
                  margin: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: VideoCard(
                      name: Track.videos[index]['name'],
                      description: Track.videos[index]['description'],
                      onTap: () {
                        VideoChooser.chooseVideo(index);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Video()));
                      },
                    ),
                  ),
                );
              },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
            ),
          ),
        ],
      ),
    );
  }
}
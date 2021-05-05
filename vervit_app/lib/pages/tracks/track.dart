import 'package:flutter/material.dart';
import 'package:vervit_app/pages/tracks/video.dart';
import 'package:vervit_app/navigation/tracks_navigation.dart';

class Track {
  static int index = 0;
  static List<Map<String, String>> videos;

  static void setTrackIndex(int i) {
    index = i;
    videos = tracks[index]['videos'];
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
        backgroundColor: Colors.blue[800],
        title: Text(tracks[Track.index]['name']),
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
            child: ListView.builder(
              itemCount: Track.videos.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: ListTile(
                      title: Text(
                        Track.videos[index]['name'],
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      onTap: () {
                        VideoChooser.chooseVideo(index);
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Video()));
                      },
                      tileColor: Colors.white,
                    ),
                  ),
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}
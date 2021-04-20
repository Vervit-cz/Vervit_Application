import 'package:flutter/material.dart';
import 'package:vervit_app/pages/tracks/track.dart';
import 'package:vervit_app/pages/tracks/specific_tracks/track_1.dart';
import 'package:vervit_app/pages/tracks/specific_tracks/track_2.dart';
import 'package:vervit_app/pages/tracks/specific_tracks/track_3.dart';

class TracksPage extends StatefulWidget {
  @override
  _TracksPageState createState() => _TracksPageState();
}

List<Track> tracks = [
  Track(name: 'První kroky s počítačem', description: 'V tomto kurzu představujeme úplné základy práce s počítačem. Nepotřebujete k němu žádnou přechozí znalost, pouze zapnutý stolní počítač nebo notebook.', difficulty: 'Nízká obtížnost'),
  Track(name: 'Track 2', description: 'Description for Track 2', difficulty: 'Střední obtížnost'),
  Track(name: 'Track 3', description: 'Description for Track 3', difficulty: 'Vyšší obtížnost'),
];

List<Widget> _widgetNavigation = [
  TrackOne(),
  TrackTwo(),
  TrackThree()
];

Color chooseColor(index) {
  if (tracks[index].difficulty == 'Nízká obtížnost') {
    return Colors.green;
  }
  else if (tracks[index].difficulty == 'Střední obtížnost') {
    return Colors.orange[400];
  }
  else {
    return Colors.red;
  }
}

class _TracksPageState extends State<TracksPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tracks.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Card(
            margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text(
                    tracks[index].name,
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
                    tracks[index].description,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[800],
                      height: 1.15,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.assessment,
                          size: 20.0,
                          color: chooseColor(index),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            tracks[index].difficulty,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey[800],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => _widgetNavigation[index]));
          },
        );
      }
    );
  }
}
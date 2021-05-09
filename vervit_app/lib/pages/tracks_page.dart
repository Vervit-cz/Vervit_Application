import 'package:flutter/material.dart';
import 'package:vervit_app/pages/tracks/track.dart';
import 'package:vervit_app/navigation/tracks_navigation.dart';

class TracksPage extends StatefulWidget {
  @override
  _TracksPageState createState() => _TracksPageState();
}

Color chooseColor(index) {
  if (tracks[index]['difficulty'] == 'Nízká obtížnost') {
    return Colors.green;
  }
  else if (tracks[index]['difficulty'] == 'Střední obtížnost') {
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
                    tracks[index]['name'],
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
                    tracks[index]['description'],
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
                            tracks[index]['difficulty'],
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
            Track.setTrackIndex(index);
            Navigator.push(context, MaterialPageRoute(builder: (context) => TrackWidget()));
          },
        );
      }
    );
  }
}
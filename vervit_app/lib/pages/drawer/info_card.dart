import 'package:flutter/material.dart';
import 'package:vervit_app/constants.dart';

class InfoCard extends StatelessWidget {

  final String name;
  final String info;
  final String photo;
  
  InfoCard({ this.name, this.info, this.photo });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.width / 6,
                      width: MediaQuery.of(context).size.width / 4,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(photo),
                          fit: BoxFit.fitHeight
                        ),
                      ),
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 20.0,
                  thickness: 2.0,
                  color: kColorGray,
                ),
                Text(
                  info,
                  style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black,
                  ),
                ),
              ],
            )
          ),
        ),
    );
  }
}

var info = [
  {
    'name': 'Šimon Skoumal',
    'info': 'Tady bude krátký info',
    'photo': 'assets/photos/IMG_6636.JPG'
  },
  {
    'name': 'Kryštof Latka',
    'info': 'Tady bude krátký info',
    'photo': 'assets/photos/IMG_3715.jpg'
  },
  {
    'name': 'Sára Pavlínková',
    'info': 'Tady bude krátký info',
    'photo': 'assets/photos/IMG_6637.JPG'
  }
];
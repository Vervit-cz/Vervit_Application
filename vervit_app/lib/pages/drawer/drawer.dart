import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vervit_app/constants.dart';
import 'package:vervit_app/interactions/url_launcher.dart';

class DrawerContents extends StatefulWidget {
  @override
  DrawerContentsPageState createState() => DrawerContentsPageState();
}

class DrawerContentsPageState extends State<DrawerContents> {

  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget> [
          DrawerHeader(
            child: Text(
                'Kontakty',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                )
            ),
          ),
          Card(
            margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
            child: ElevatedButton(
              onPressed: () {
                Interactions.launchURL("https://www.facebook.com/Vervit-105030278305");
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(kColorTeal),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                      )
                  )
              ),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0, 16.0),
                  child: Row(
                      children: <Widget> [
                        Icon(
                            Icons.facebook,
                            color: Colors.black,
                            size: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Facebook - Vervit',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                              )
                          ),
                        ),
                      ]
                  ),
                ),
            ),
          ),
          Card(
            margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
            child: ElevatedButton(
              onPressed: () {
                Interactions.launchURL("mailto:vervitpodpora@gmail.com?subject=Podpora&body=");
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(kColorYellow),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                      )
                  )
              ),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0, 16.0),
                  child: Row(
                      children: <Widget> [
                        Icon(
                          Icons.mail_outline,
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'vervitpodpora@gmail.com',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                              )
                          ),
                        ),
                      ]
                  ),
                ),
            ),
          ),
          Card(
            margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
            child: ElevatedButton(
              onPressed: () {
                Interactions.launchURL("https://www.vervit.cz/");
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(kColorLightGreen),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                      )
                  )
              ),
              child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0, 16.0),
                  child: Row(
                      children: <Widget> [
                        Icon(
                            CupertinoIcons.globe,
                            color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'www.vervit.cz',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.black,
                              )
                          ),
                        ),
                      ]
                  ),
                ),
            ),
          ),
          Card(
            margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
            child: ElevatedButton(
              onPressed: () {
                Interactions.launchURL("https://www.youtube.cz/channel/UC2wYlSqcqfmzFz_5J1s0jHA");
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(kColorRed),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )
                  )
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 16.0, 0, 16.0),
                child: Row(
                    children: <Widget> [
                      Icon(
                        CupertinoIcons.arrowtriangle_right_square_fill,
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            'YouTube - Vervit',
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.black,
                            )
                        ),
                      ),
                    ]
                ),
              ),
            ),
          ),
        ]
    );
  }
}
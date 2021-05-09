import 'package:flutter/material.dart';
import 'package:vervit_app/constants.dart';
import 'package:vervit_app/pages/home_page.dart';
import 'package:vervit_app/pages/tracks_page.dart';
import 'package:vervit_app/pages/faqs_page.dart';
import 'package:vervit_app/pages/search_page.dart';
import 'pages/splash_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.light().copyWith(
      primaryColor: Color(0xFF6DA8DA),
      scaffoldBackgroundColor: kColorGray,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: IconThemeData(
        color: Colors.black, //change your color here
        ),
      ),
    ),

    initialRoute: '/',
    routes: {
      '/': (context) => Splash(),
      '/home':(context) => Home(),
    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    TracksPage(),
    SearchPage(),
    FAQsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kColorTeal,
        title: Text('VERVIT', style: TextStyle(color: Colors.black),),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget> [
            DrawerHeader(
              child: Text(
                'Contacts',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                )
              ),
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: <Widget> [
                    Icon(
                      Icons.accessibility_new_sharp
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Vervit',
                      ),
                    ),
                  ]
                ),
              )
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: <Widget> [
                    Icon(
                      Icons.mail_outline,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'vervitpodpora@gmail.com',
                      ),
                    ),
                  ]
                ),
              )
            ),
            Card(
              margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: <Widget> [
                    Icon(
                      Icons.settings_ethernet_outlined,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'www.vervit.cz',
                      ),
                    ),
                  ]
                ),
              )
            ),
          ]
        )
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.track_changes,
            ),
            label: 'Tracks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.question_answer,
            ),
            label: 'FAQs',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        showSelectedLabels: true,
      ),
    );
  }
}
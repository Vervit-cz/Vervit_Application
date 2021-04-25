import 'package:flutter/material.dart';
import 'package:vervit_app/constants.dart';
import 'package:vervit_app/pages/home/android_phone_apps.dart';
import 'package:vervit_app/pages/home/android_phone_basics.dart';
import 'package:vervit_app/pages/home/android_phone_page.dart';
import 'package:vervit_app/pages/home/android_phone_social.dart';
import 'package:vervit_app/pages/home/computer_basics_page.dart';
import 'package:vervit_app/pages/home/internet_page.dart';
import 'package:vervit_app/pages/home/iphone_apps.dart';
import 'package:vervit_app/pages/home/iphone_basics.dart';
import 'package:vervit_app/pages/home/iphone_social.dart';
import 'package:vervit_app/pages/home_page.dart';
import 'package:vervit_app/pages/tracks_page.dart';
import 'package:vervit_app/pages/faqs_page.dart';
import 'package:vervit_app/pages/search_page.dart';
import 'package:vervit_app/pages/home/computer_page.dart';
import 'package:vervit_app/pages/home/phone_page.dart';
import 'pages/splash_screen.dart';
import 'pages/home/iphone_page.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.light().copyWith(
      primaryColor: Color(0xFF6DA8DA),
      scaffoldBackgroundColor: kColorGray,
    ),

    initialRoute: '/',
    routes: {
      '/': (context) => Splash(),
      '/home':(context) => Home(),
      '/computer': (context) => ComputerPage(),
      '/phone': (context) => PhonePage(),

      '/iphone': (context) => IphonePage(),
      '/iphoneApps': (context) => IphoneAppsPage(),
      '/iphoneSocial': (context) => IphoneSocialPage(),
      '/iphoneBasics': (context) => IphoneBasicsPage(),

      '/androidPhone': (context) => AndroidPhonePage(),
      '/androidBasics': (context) => AndroidPhoneBasicsPage(),
      '/androidApps': (context) => AndroidPhoneAppsPage(),
      '/androidSocial': (context) => AndroidPhoneSocialPage(),

      '/computerBasics': (context) => ComputerBasicsPage(),
      '/internet': (context) => InternetPage(),


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
        backgroundColor: Colors.blue[800],
        title: Text('Hello World!'),
        centerTitle: true,
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
        selectedItemColor: Colors.blue[800],
        unselectedItemColor: Colors.blue[400],
        onTap: _onItemTapped,
        showUnselectedLabels: true,
        showSelectedLabels: true,
      ),
    );
  }
}
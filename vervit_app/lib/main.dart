import 'package:flutter/material.dart';
import 'package:vervit_app/constants.dart';
import 'package:vervit_app/database/keyword_database.dart';
import 'package:vervit_app/database/videodatabase.dart';
import 'package:vervit_app/pages/home_page.dart';
import 'package:vervit_app/pages/tracks_page.dart';
import 'package:vervit_app/pages/faqs_page.dart';
import 'package:vervit_app/pages/search_page.dart';
import 'package:vervit_app/pages/drawer/drawer.dart';
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

  Database.createDatabase();
  KeywordDatabase.createDatabase();

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
        child: DrawerContents(),
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Domů',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.track_changes,
            ),
            label: 'Kurzy',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Hledání',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.question_answer,
            ),
            label: 'Podpora',
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
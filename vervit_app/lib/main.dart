import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Color _backgroundColor = Colors.blue[400];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.blue[800],
        title: Text('Hello World!'),
        centerTitle: true,
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: _backgroundColor,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.track_changes,
              color: _backgroundColor,
            ),
            label: 'Tracks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.question_answer,
              color: _backgroundColor,
            ),
            label: 'FAQs',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contacts,
              color: _backgroundColor,
            ),
            label: 'Contacts',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[800],
        onTap: _onItemTapped,
      ),
    );
  }
}


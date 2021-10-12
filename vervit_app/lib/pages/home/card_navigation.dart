import 'package:vervit_app/components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:vervit_app/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vervit_app/database/video.dart';
import 'package:vervit_app/database/keyword_database.dart';

class CardPage{
  String pageName;
  String heading;
  Color pageColor;
  List<Card> cards;
  List<VideoObject> videos;
  CardPage({this.pageName, this.cards, this.heading, this.pageColor, this.videos}){
    this.pageName = pageName;
    this.cards = cards;
    this.heading = heading;
    this.pageColor = pageColor;
    this.videos = videos;
  }
}

class Card{
  String text;
  IconData icon;
  String navigateTo;
  List<ReusableCard> cards;
  Card({this.text, this.icon, this.navigateTo}) {
    this.text = text;
    this.icon = icon;
    this.navigateTo = navigateTo;
  }
}


var homePages = [
  CardPage(
    pageName: 'phone',
    heading:'Vyberte si model:',
    pageColor: kColorLightGreen,
    cards:[
      Card(
        text:'iPhone',
        icon: Icons.phone_iphone_outlined,
        navigateTo: 'iphone',
      ),
      Card(
        text: 'Android',
        icon: Icons.phone_android_rounded,
        navigateTo: 'android',
      ),
    ],
  ),
  CardPage(
    pageName: 'computer',
    heading: 'Co vás zajímá?',
    pageColor: kColorTeal,
    cards:[
      Card(
        text:'Základy',
        icon: Icons.info,
        navigateTo: 'computer basics',
      ),
      Card(
        text: 'Internet',
        icon: FontAwesomeIcons.wifi,
        navigateTo: 'internet',
      ),
    ],
  ),
  CardPage(
    pageName: 'iphone',
    heading: 'Co vás zajímá?',
    pageColor: kColorLightGreen,
    cards:[
      Card(
        text: 'Základy',
        icon: Icons.info,
        navigateTo:'iphone basics',
      ),
      Card(
        text: 'Aplikace',
        icon: Icons.apps,
        navigateTo:'iphone apps',
      ),
    ],
  ),
  CardPage(
    pageName: 'android',
    heading: 'Co vás zajímá?',
    pageColor: kColorLightGreen,
    cards:[
      Card(
        text: 'Základy',
        icon: Icons.info,
        navigateTo:'android basics',
      ),
      Card(
        text: 'Aplikace',
        icon: Icons.apps,
        navigateTo:'android apps',
      ),
    ],
  ),
  CardPage(
    pageName: 'internet',
    heading: 'Co vás zajímá?',
    pageColor: kColorTeal,
    cards:[
      Card(
        text: 'Email',
        icon: Icons.email_outlined,
        navigateTo: 'email',
      ),
      Card(
        text: 'Vyhledávání na internetu',
        icon: FontAwesomeIcons.search,
        navigateTo: 'browser',
      ),
    ],
  ),

  //final pages with videos
  CardPage(
    pageName: 'iphone basics',
    pageColor: kColorLightGreen,
    cards:[],
    videos: createVideosList('iphone základy'),
  ),
  CardPage(
    pageName: 'iphone apps',
    pageColor: kColorLightGreen,
    cards:[],
    videos: createVideosList('aplikace iphone'),
  ),
  CardPage(
    pageName: 'android basics',
    pageColor: kColorLightGreen,
    cards:[],
    videos: createVideosList('android základy'),
  ),
  CardPage(
    pageName: 'android apps',
    pageColor: kColorLightGreen,
    cards:[],
    videos: createVideosList('aplikace android'),
  ),
  CardPage(
    pageName: 'computer basics',
    pageColor: kColorTeal,
    cards:[],
    videos: createVideosList('Počítač základy'),
  ),
  CardPage(
    pageName: 'social media',
    pageColor: kColorYellow,
    cards:[],
    videos: createVideosList('sociální sítě'),
  ),
  CardPage(
    pageName: 'security',
    pageColor: kColorRed,
    cards:[],
    videos: createVideosList('bezpečnost'),
  ),
  CardPage(
    pageName: 'email',
    pageColor: kColorTeal,
    cards:[],
    videos: createVideosList('Počítač email'),
  ),
  CardPage(
    pageName: 'browser',
    pageColor: kColorTeal,
    cards:[],
    videos: createVideosList('Počítač vyhledat'),
),
];

CardPage findNavigationRoute(String navigateTo){
  CardPage match;
  for (var page in homePages){
    if(page.pageName == navigateTo){
        match = page;
    }
  }
  return match;
}

List<VideoObject> createVideosList(String searchTerm) {
  List<VideoObject> list = KeywordDatabase.orderedSearchList(searchTerm, 1);
  if (list.isNotEmpty) {
    return list;
  }
  else {
    return [];
  }
}
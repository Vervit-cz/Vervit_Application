import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vervit_app/components/reusable_card.dart';
import 'package:vervit_app/constants.dart';
import 'package:vervit_app/pages/home/card_navigation.dart';
import 'package:vervit_app/pages/home/reusable_card_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 45.0,
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left:15.0, right: 15.0, top:15.0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Vítejte!',
                  style: kSmallTextStyle
                  ),
              ),
              ),
            ),
          Expanded(
            flex:2,
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(15.0, 0.0,15.0, 0.0),
              child: FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'Co se dneska \nchcete naučit?',
                  textWidthBasis: TextWidthBasis.longestLine,
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex:4,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    text: 'Práci s \npočítačem',
                    icon: FontAwesomeIcons.desktop,
                    color: kColorTeal,
                    textSize: 27.0,
                    iconSize: 90.0,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardPageWidget(
                              page: findNavigationRoute('computer'),
                          prevCardName: 'Práce s Počítačem' ),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    text: 'Práci s \nmobilem',
                    icon: FontAwesomeIcons.mobileAlt,
                    color: kColorLightGreen,
                    textSize: 27.0,
                    iconSize: 90.0,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardPageWidget(
                              page: findNavigationRoute('phone'),
                          prevCardName: 'Práce s Mobilem',),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex:4,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    text: 'Sociální sítě',
                    icon: FontAwesomeIcons.users,
                    color: kColorYellow,
                    textSize: 27.0,
                    iconSize: 90.0,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardPageWidget(
                              page: findNavigationRoute('social media'),
                          prevCardName: 'Sociální Sítě',),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    text: 'Bezpečnost \nna internetu',
                    icon: FontAwesomeIcons.userLock,
                    color: kColorRed,
                    textSize: 27.0,
                    iconSize: 90.0,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardPageWidget(
                              page: findNavigationRoute('security'),
                          prevCardName: 'Bezpečnost Na Internetu',),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

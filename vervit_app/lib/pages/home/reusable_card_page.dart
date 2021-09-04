import 'package:flutter/material.dart';
import 'package:vervit_app/components/reusable_card.dart';
import 'package:vervit_app/pages/home/card_navigation.dart';
import 'package:vervit_app/constants.dart';
import 'video_card_page.dart';
class CardPageWidget extends StatelessWidget {
  final CardPage page;
  final String prevCardName;

  CardPageWidget({Key key, this.page, this.prevCardName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = Text(prevCardName, style: TextStyle(color: Colors.black),);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: page.pageColor,
        title: text,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.fromLTRB(15.0, 30.0, 15.0, 0.0),
              child: page.cards.length == 0 ? SizedBox() : FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    page.heading,
                    textWidthBasis: TextWidthBasis.longestLine,
                    style: kTitleTextStyle,
                  ),
              ),
            ),
            page.cards.length == 0 ?
              VideoCardPage(page: page) :
              Expanded(
                child: ReusableCard(
                    color: page.pageColor,
                    text: page.cards[0].text,
                    icon: page.cards[0].icon,
                    iconSize: 140.0,
                    textSize: 35.0,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardPageWidget(
                              page: findNavigationRoute(page.cards[0].navigateTo,),
                            prevCardName: page.cards[0].text,
                          ),
                        ),
                      );
                    }
                ),
              ),
            page.cards.length == 0 ?
                SizedBox() :
                Expanded(
                  child: ReusableCard(
                      color: page.pageColor,
                      text: page.cards[1].text,
                      icon: page.cards[1].icon,
                      iconSize: 130.0,
                      textSize: 40.0,
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CardPageWidget(
                              page: findNavigationRoute(page.cards[1].navigateTo),
                              prevCardName: page.cards[1].text,),
                          ),
                        );
                      }
                  ),
                ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:vervit_app/components/reusable_card.dart';
import 'package:vervit_app/pages/home/card_navigation.dart';
import 'package:vervit_app/constants.dart';


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
              child: SizedBox(
                height: 70.0,
                child: page.cards.length == 0 ? Text('Heading', textWidthBasis: TextWidthBasis.longestLine,
                  style: kTitleTextStyle,) : Text(
                  page.heading,
                  textWidthBasis: TextWidthBasis.longestLine,
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              child: page.cards.length == 0 ?
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(prevCardName),
              ) :
              ReusableCard(
                  color: page.pageColor,
                  text: page.cards[0].text,
                  icon: page.cards[0].icon,
                  iconSize: 150.0,
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
            Expanded(
                child: page.cards.length == 0 ?
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Add info', ),
                ) :
                ReusableCard(
                    color: page.pageColor,
                    text: page.cards[1].text,
                    icon: page.cards[1].icon,
                    iconSize: 150.0,
                    textSize: 35.0,
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
                )
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

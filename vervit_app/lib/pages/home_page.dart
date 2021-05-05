import 'package:flutter/material.dart';
import 'package:vervit_app/components/reusable_card.dart';
import 'package:vervit_app/components/iconCard_content.dart';
import 'package:vervit_app/constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left:15.0, right: 15.0, top:10.0),
              child: Text(
                'Vyberte si, co se chcete naučit:',
                style: TextStyle(fontSize: 23.0),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              text: 'Práci s počítačem',
              icon: Icons.computer,
              navigateTo:'/computer',
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              text: 'Práci s chytrým telefonem',
              icon: Icons.phone_android,
              navigateTo: '/phone',
            ),
          ),
        ],
      ),
    );
  }
}
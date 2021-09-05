import 'package:flutter/material.dart';
import 'qna.dart';

class QuoteCard extends StatelessWidget {

  final Qna qna;
  QuoteCard({ this.qna });

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                qna.question,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                ),
              ),
              Divider(
                  height: 30.0,
                  thickness: 3.0,
              ),
              Text(
                qna.answer,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        )
    );
  }
}
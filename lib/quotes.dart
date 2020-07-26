import 'package:flutter/material.dart';

class Quotes extends StatelessWidget {
  final int quotesIndex;
  final quotes;
  Quotes(this.quotes, this.quotesIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(0, 200, 0, 20),
          width: double.infinity,
          child: Text(
            quotes[quotesIndex]['quote'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        Container(
          child: Text(
            '- ' + quotes[quotesIndex]['author'],
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
      ],
    );
  }
}

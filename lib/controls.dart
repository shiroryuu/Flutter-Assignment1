import 'package:flutter/material.dart';

class Controls extends StatelessWidget {
  final Function changeQuotes;

  Controls(this.changeQuotes);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 60,
        vertical: 100,
      ),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Change Text'),
        onPressed: changeQuotes,
      ),
    );
  }
}

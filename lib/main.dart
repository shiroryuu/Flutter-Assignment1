// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'dart:math';

import 'package:flutter/material.dart';

import './quotes.dart';
import './controls.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _quotesIndex = 0;

  void _changeQuotes() {
    var rand = new Random();
    if (_quotesIndex < _quotes.length) {
      setState(() {
        _quotesIndex = rand.nextInt(_quotes.length);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Column(
          children: <Widget>[
            Quotes(_quotes, _quotesIndex),
            Controls(_changeQuotes),
          ],
        ),
      ),
    );
  }

  final _quotes = [
    {
      'quote': 'Act as if what you do makes a difference. It does. ',
      'author': 'William James'
    },
    {
      'quote':
          'Success is not final, failure is not fatal: it is the courage to continue that counts.',
      'author': 'Winston Churchill'
    },
    {
      'quote':
          'Never bend your head. Always hold it high. Look the world straight in the eye.',
      'author': 'Helen Keller'
    },
    {
      'quote':
          'What you get by achieving your goals is not as important as what you become by achieving your goals.',
      'author': 'Zig Ziglar'
    },
    {
      'quote': 'Believe you can and you\'re halfway there.',
      'author': 'Theodore Roosevelt'
    },
    {
      'quote':
          'When you have a dream, you\'ve got to grab it and never let go.',
      'author': 'Carol Burnett'
    },
    {
      'quote':
          'I can\'t change the direction of the wind, but I can adjust my sails to always reach my destination.',
      'author': 'Jimmy Dean'
    },
    {
      'quote':
          'No matter what you\'re going through, there\'s a light at the end of the tunnel.',
      'author': 'Demi Lovato'
    },
    {
      'quote':
          'Life is like riding a bicycle. To keep your balance, you must keep moving.',
      'author': 'Albert Einstein'
    },
    {
      'quote':
          'You are never too old to set another goal or to dream a new dream.',
      'author': 'C.S. Lewis'
    },
    {
      'quote': 'Try to be a rainbow in someone else\'s cloud.',
      'author': 'Maya Angelou'
    },
    {
      'quote':
          'Inspiration comes from within yourself. One has to be positive. When you\'re positive, good things happen.',
      'author': 'Deep Roy'
    },
    {
      'quote':
          'Sometimes you will never know the value of a moment, until it becomes a memory.',
      'author': 'Dr. Seuss'
    },
  ];
}

import 'package:flutter/cupertino.dart';
import 'dart:math';

import 'package:flutter/material.dart';

class ChallengeNine extends StatefulWidget {
  @override
  _ChallengeNineState createState() => _ChallengeNineState();
}

class _ChallengeNineState extends State<ChallengeNine> {
  final suits = ["Diamonds", "Clubs", "Hearts", "Spades"];

  final cards = [
    "Ace",
    "2",
    "3",
    "4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "Jack",
    "Queen",
    "King"
  ];

  int card, suit;

  bool _clicked = false;

  @override
  Widget build(BuildContext context) {
    Random rnd = new Random();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(4),
          child: Column(
            children: <Widget>[
              RaisedButton(
                child: Text(' Press this button to Exit '),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              RaisedButton(
                child: Text(
                    ' Press this button to get a new random playing card  '),
                onPressed: () {
                  setState(() {
                    card = rnd.nextInt(13);
                    suit = rnd.nextInt(4);
                    _clicked = !_clicked;
//                  distance = double.parse(speed) * double.parse(time);
                  });
                },
              ),
              _clicked
                  ? Text(
                      'Random card is: ' + cards[card] + " of " + suits[suit])
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

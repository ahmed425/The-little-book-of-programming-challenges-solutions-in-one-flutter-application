import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int playerScore = 0;
int compScore = 0;
int ifAce = 0;
bool bust = false;
String choice;

class Challenge25 extends StatefulWidget {
  @override
  _Challenge25State createState() => _Challenge25State();
}

class _Challenge25State extends State<Challenge25> {
  final suits = ["Diamonds", "Clubs", "Hearts", "Spades"];
  var _msg1 = '';
  var _msg2 = '';
  var _msg3 = '';
  var _msg4 = '';
  var _msg5 = '';
  var _msg6 = '';
  var _msg7 = '';
  var _msg8 = '';
  var _msg9 = '';
  var _msg10 = '';
  var _msg11 = '';
  var _msg12 = '';
  var _msg13 = '';
  var _msg14 = '';
  var _msg15 = '';
  var _msg16 = '';
  var _msg17 = '';

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
  var dealt = new List.generate(13, (_) => new List(4));

  int card, suit;

  var _choiceController;

  @override
  Widget build(BuildContext context) {
    var _ifAceController;
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
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  choice = value;
                },
                controller: _choiceController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Draw(d) or stick(s)?",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  ifAce = int.parse(value);
                },
                controller: _ifAceController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Do you want the Ace to be 1 or 11?",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            RaisedButton(
              child: Text('Play'),
              onPressed: () {
                if (ifAce != 0 && choice != '') {
                  play();
                } else {
                  setState(() {
                    _msg1 =
                        'enter the details above first/again then press play';
                  });
                }
              },
            ),
//
            RaisedButton(
              child: Text('Reset'),
              onPressed: () {
                playerScore = 0;
                compScore = 0;
                ifAce = 0;
                bust = false;
                choice = '';
                setState(() {
                  _msg1 = '';
                  _msg2 = '';
                  _msg3 = '';
                  _msg4 = '';
                  _msg5 = '';
                  _msg6 = '';
                  _msg7 = '';
                  _msg8 = '';
                  _msg9 = '';
                  _msg10 = '';
                  _msg11 = '';
                  _msg12 = '';
                  _msg13 = '';
                  _msg14 = '';
                  _msg15 = '';
                  _msg16 = '';
                  _msg17 = '';
                });
              },
            ),
            _msg1 != null ? Text(_msg1) : Text(''),
            _msg2 != null ? Text(_msg2) : Text(''),
            _msg3 != null ? Text(_msg3) : Text(''),
            _msg4 != null ? Text(_msg4) : Text(''),
            _msg5 != null ? Text(_msg5) : Text(''),
            _msg6 != null ? Text(_msg6) : Text(''),
            _msg7 != null ? Text(_msg7) : Text(''),
            _msg8 != null ? Text(_msg8) : Text(''),
            _msg9 != null ? Text(_msg9) : Text(''),
            _msg10 != null ? Text(_msg10) : Text(''),
            _msg11 != null ? Text(_msg11) : Text(''),
            _msg12 != null ? Text(_msg12) : Text(''),
            _msg13 != null ? Text(_msg13) : Text(''),
            _msg14 != null ? Text(_msg14) : Text(''),
            _msg15 != null ? Text(_msg15) : Text(''),
            _msg16 != null ? Text(_msg16) : Text(''),
            _msg17 != null ? Text(_msg17) : Text(''),
          ],
        ),
      )),
    );
  }

  void dealCard() {
    Random rnd = new Random();
    card = rnd.nextInt(13);
    suit = rnd.nextInt(4);
    if (check(dealt) == 0) {
      setState(() {
        _msg1 = "No more card";
      });
    } else {
      while (dealt[card][suit] == 1) {
        card = rnd.nextInt(13);
        suit = rnd.nextInt(4);
      }
      dealt[card][suit] = 1;
      setState(() {
        _msg2 = "The dealt card is: " + cards[card] + " of " + suits[suit];
      });
    }
  }

  int check(List arr) {
    int count = 0;
    for (int i = 0; i < arr.length; i++) {
      for (int j = 0; j < arr[0].length; j++) {
        if (arr[i][j] == 0) count++;
      }
    }
    return count;
  }

  void play() {
    setState(() {
      _msg3 = "Cards dealt to player: ";
    });
    dealCard();
    if (card == 0) {
      ifAce = ifAce;
//      setState(() {
//        _msg4 = "Do you want the Ace to be 1 or 11?";
//        _msg5 = '';
//        _msg6 = '';
//        _msg7 = '';
//        _msg8 = '';
//        _msg9 = '';
//        _msg10 = '';
//        _msg11 = '';
//        _msg12 = '';
//        _msg13 = '';
//        _msg14 = '';
//        _msg15 = '';
//        _msg16 = '';
//        _msg17 = '';
//      });
//      chooseAce();
//      ifAce = in.nextInt();
      playerScore += ifAce;
    }
    playerScore += card + 1;
    dealCard();
    if (card == 0) {
      ifAce = ifAce;
//      setState(() {
//        _msg5 = "Do you want the Ace to be 1 or 11? ";
//      });
      playerScore += ifAce;
    }
    playerScore += card + 1;
    if (playerScore > 21) {
      setState(() {
        _msg6 = "Player score is " +
            playerScore.toString() +
            ".\nBust, computer wins";
      });

      return;
    } else if (playerScore == 21) {
      setState(() {
        _msg7 = "BLACKJACK!!!\nPlayer wins";
      });
      return;
    }
    setState(() {
      _msg8 = "Player score is " + playerScore.toString();
    });
//    String choice = in.nextLine();

    if (choice == "d") {
      dealCard();
      playerScore += card + 1;
      if (playerScore == 21) {
        setState(() {
          _msg9 = "BLACKJACK!!!\nPlayer wins";
        });
        return;
      }
      setState(() {
        _msg10 = "Player score is " + playerScore.toString();
      });
      if (playerScore > 21) {
        setState(() {
          _msg11 = "Bust";
        });
        bust = true;
      }
//      setState(() {
//        _msg12 = "Draw(d) or stick(s)?";
//      });
    }
    if (bust == false) {
      setState(() {
        _msg13 = "Cards dealt to computer: ";
      });
      dealCard();
      compScore += card + 1;
      dealCard();
      compScore += card + 1;
      setState(() {
        _msg14 = "Computer score is " + compScore.toString();
      });
      if (playerScore > compScore && compScore < 22) {
        setState(() {
          _msg15 = "Player wins";
        });
      } else
        setState(() {
          _msg16 = "Computer wins";
        });
    } else
      setState(() {
        _msg17 = "Computer wins";
      });
  }

  void chooseAce() {
    ifAce = ifAce;
  }
}

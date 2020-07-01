import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

int playerScore = 0;
int compScore = 0;
int ifAce = 0;
bool bust = false;
String choice;
int lives = 12;
var code = new List(4);

class Challenge26 extends StatefulWidget {
  @override
  _Challenge26State createState() => _Challenge26State();
}

class _Challenge26State extends State<Challenge26> {
  var _msg1 = '';
  var _msg2 = '';
  var _msg3 = '';
  var _msg4 = '';
  var _msg5 = '';

  dynamic input;

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
                  setState(() {
                    input = int.parse(value);
                  });
                },
                controller: _ifAceController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Guess 4 digit code",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            RaisedButton(
              child: Text('Play'),
              onPressed: () {
                play();
//
              },
            ),
//
            RaisedButton(
              child: Text('Reset'),
              onPressed: () {
                lives = 12;
                Random rnd = new Random();
                for (int i = 0; i < code.length; i++) {
                  code[i] = rnd.nextInt(10);
                  print("code is : " + code.toString());
                }
                setState(() {
//                  input = 0;
                  _msg1 = '';
                  _msg2 = '';
                  _msg3 = '';
                  _msg4 = '';
                  _msg5 = '';
                });
              },
            ),
            _msg1 != null ? Text(_msg1) : Text(''),
            _msg2 != null ? Text(_msg2) : Text(''),
            _msg3 != null ? Text(_msg3) : Text(''),
            _msg4 != null ? Text(_msg4) : Text(''),
            _msg5 != null ? Text(_msg5) : Text(''),
          ],
        ),
      )),
    );
  }

  void play() {
    //    Scanner in = new Scanner(System.in);
    Random rnd = new Random();

    var guess = new List(4);

    if (lives == 12) {
      for (int i = 0; i < code.length; i++) {
        code[i] = rnd.nextInt(10);
        print("code is : " + code.toString());
      }
    }
    print("code is : " + code.toString());

    dynamic myInput = input;
    lives--;
    print(lives.toString());
    print(myInput);
    guess[3] = (myInput % 10).toInt();
    print(guess[3]);
    myInput /= 10;
    guess[2] = (myInput % 10).toInt();
    print(guess[2]);
    myInput /= 10;
    guess[1] = (myInput % 10).toInt();
    print(guess[1]);
    myInput /= 10;
    guess[0] = (myInput % 10).toInt();
    print(guess[0]);
    print(guess);

    if (lives > 0) {
      int correctPlace = 0;
      for (int i = 0; i < code.length; i++) {
        if (code[i] == guess[i]) correctPlace++;
      }
      setState(() {
        _msg1 = "You guessed " +
            correctPlace.toString() +
            " digit(s) in the correct place";
      });
      if (correctPlace == 4) {
        setState(() {
          _msg2 = "You win!";
        });
      }
      int count = 0;
      for (int i = 0; i < code.length; i++) {
        for (int j = 0; j < guess.length; j++) {
          if (code[i] == guess[j] && i != j) count++;
        }
      }
      setState(() {
        _msg3 = "You guessed " +
            count.toString() +
            " digit(s) but in the wrong place";
      });
      setState(() {
        _msg4 = "Lives remaining: " + lives.toString();
      });
      print("Lives remaining: " + lives.toString());
    }

    if (lives < 1) {
      setState(() {
        _msg5 = "You lose!";
      });
    }
  }
}

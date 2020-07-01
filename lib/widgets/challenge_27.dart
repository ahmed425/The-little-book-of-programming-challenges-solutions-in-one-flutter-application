import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Challenge27 extends StatefulWidget {
  @override
  _Challenge27State createState() => _Challenge27State();
}

class _Challenge27State extends State<Challenge27> {
  var _msg1 = '';
  var _msg2 = '';
  var _msg3 = '';
  var _msg4 = '';
  var _msg5 = '';

  String word;
  var guess;

  String userGuess;
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
                    word = value;
                    guess = new List(word.length);
                  });
                },
                controller: _ifAceController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Type a word",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    userGuess = value;
                  });
                },
                controller: _ifAceController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: _msg5,
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
                reset();
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

  int lives = 6;
  void reset() {
    lives = 5;
    setState(() {
      _msg1 = '';
      _msg3 = '';
      _msg2 = '';
      _msg4 = '';
      _msg5 = "You have " + lives.toString() + " lives left - Letter: ";
    });
  }

  void play() {
    for (int i = 0; i < guess.length; i++) guess[i] = '*';
    lives--;
    if (lives >= 0) {
      setState(() {
        _msg1 = "Word to guess: ";
      });
      print("Word to guess: ");
      setState(() {
        _msg2 = guess.toString();
      });
      printList(guess);
      setState(() {
        _msg5 = "You have " + lives.toString() + " lives left - Letter: ";
      });
      print("You have " + lives.toString() + " lives left - Letter: ");
//      String input = in.nextLine();
      String letter = '0';
      if (userGuess.length == word.length && userGuess == word) {
//    System.out.println("You guessed it");
        setState(() {
          _msg1 = '';
          _msg2 = '';
          _msg4 = '';
          _msg5 = '';
          _msg3 = "You guessed it right , you win ! ";
        });
//    in.close();
        return;
      } else {
        letter = userGuess.substring(0, 0);
      }

      for (int i = 0; i < word.length; i++) {
        if (word.substring(i, i) == letter) guess[i] = letter;
      }

//    System.out.println("You lose!");
    }
    if (lives < 0)
      setState(() {
        _msg4 = 'You lose!';
        _msg1 = '';
        _msg2 = '';
        _msg3 = '';
        _msg5 = '';
      });
//    in.close();
  }

  void printList(List arr) {
    for (int i = 0; i < arr.length; i++) print(arr[i]);
    print("\n");
  }
}

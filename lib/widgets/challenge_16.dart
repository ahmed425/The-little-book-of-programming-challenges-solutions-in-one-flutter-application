import 'dart:math';

import 'package:flutter/material.dart';

int count = 0;

class Challenge16 extends StatefulWidget {
  @override
  _Challenge16State createState() => _Challenge16State();
}

class _Challenge16State extends State<Challenge16> {
  String _sentence;

  var _sentenceController;

//  String _count = "0";

  String _reversedSentence = '';

  String _userGuess;
  String _txtMsg = '';

  int _compSelection = 0;
  @override
  Widget build(BuildContext context) {
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
          child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _userGuess = value;
                  });
                  print(_userGuess);
                },
                controller: _sentenceController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Guess the number (from 1 to 100)",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            count != 0 ? Text(_txtMsg) : Text(''),
            _compSelection != 0
                ? Text(
                    'The computer selected ' + ' ' + _compSelection.toString())
                : Text(''),
            RaisedButton(
              child: Text('play'),
              onPressed: () {
                play();
              },
            )
//            _reversedSentence != ''
//                ? Text('Reversed sentence is : ' + ' ' + _reversedSentence)
//                : Text(''),
//            RaisedButton(
//              child: Text('Play'),
//              onPressed: () {
//                play();
//                String str = _sentence;
//
//                split string
//                var arr = str.split(' ');
//                setState(() {
//                  _count = arr.length.toString();
//                });

//                print(arr.length.toString());
//                setState(() {
//                  _reversedSentence = _sentence
//                      .split('')
//                      .reversed
//                      .join();
//                });
//                print(_reversedSentence);
//              },
//            )
          ]),
        ),
      ),
    );
  }

  void play() {
    Random rnd = new Random();
    int comp = rnd.nextInt(100) + 1;
    setState(() {
      _compSelection = comp;
    });
    int user = int.parse(_userGuess);

    count++;
//  System.out.print("Guess the number (1-100):");
    if (user > comp) {
      setState(() {
        _txtMsg = 'Too high. Guess again (1-100):';
      });
//    System.out.print("Too high. Guess again (1-100):");
//    count++;
    } else if (user < comp) {
      setState(() {
        _txtMsg = 'Too low. Guess again (1-100):';
      });
//    System.out.print("Too low. Guess again (1-100):");
//    user = in.nextInt();
//    count++;
    } else if (user == comp) {
      _txtMsg = 'You got it';
    }
  }
}
//String str = 'hello-world-tutorialkart';
//
////split string
//var arr = str.split('-');
//
//print(arr);

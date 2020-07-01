//import 'dart:math';

import 'package:flutter/material.dart';

int count = 0;
int mod1;
int mod2;
int mod1max;
int mod2max;

class Challenge18 extends StatefulWidget {
  @override
  _Challenge18State createState() => _Challenge18State();
}

class _Challenge18State extends State<Challenge18> {
  var _mod1Controller;

//  var _mod1maxController;
//  var _mod1Msg = '';
//  var _mod2Msg = '';
//  var _ASMsg = '';

  var _astriskMsg = '';

  String _pyramid = '';

  @override
  Widget build(BuildContext context) {
    var _mod2Controller;
    var _mod2maxController;
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
                  mod1 = int.parse(value);
                },
                controller: _mod1Controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Module 1 result :",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  mod2 = int.parse(value);
                },
                controller: _mod2Controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Module 2 result :",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  mod2max = int.parse(value);
                },
                controller: _mod2maxController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter pyramid base:",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),

            RaisedButton(
              child: Text('Draw stars'),
              onPressed: () {
                drawStars(mod1, mod2);
              },
            ),
            RaisedButton(
              child: Text('Draw Pyramid'),
              onPressed: () {
                drawPyramid(mod2max);
              },
            ),

            _astriskMsg != '' ? Text(_astriskMsg) : Text(''),
            _pyramid != '' ? Text(_pyramid) : Text(''),
//            _mod2Msg != '' ? Text(_mod2Msg) : Text(''),
//            _ASMsg != '' ? Text(_ASMsg) : Text(''),
          ]),
        ),
      ),
    );
  }

  void drawStars(int s, int a) {
    for (int i = 0; i < s; i++) {
      setState(() {
        _astriskMsg = _astriskMsg + '_';
      });
    }
    for (int i = 0; i < a; i++) {
      setState(() {
        _astriskMsg = _astriskMsg + '*';
      });
    }
//      System.out.print("*");
  }

  void drawPyramid(int mod2max) {
    for (int i = 1; i < mod2max; i++) {
      for (int j = 1; j < mod2max - i; j++) {
        setState(() {
          _pyramid = _pyramid + " ";
        });
      }

//        System.out.print(" ");
      for (int j = 1; j <= 2 * i - 1; j++)

//        System.out.print("*");
      {
        setState(() {
          _pyramid = _pyramid + "*";
        });
      }
      setState(() {
        _pyramid = _pyramid + "\n";
      });
//      System.out.println();
    }
    setState(() {
      _pyramid = _pyramid + "\n";
    });
//    System.out.println();
  }
}

//    for (int i = 1; i <= mod2max; i++) {
//      for (int j = 1; j <= mod2max - i; j++) {
//        setState(() {
//          _pyramid = _pyramid + ' ';
//        });
//      }
//      for (int j = 1; j <= 2 * i - 1; j++) {
//        setState(() {
//          _pyramid = _pyramid + '*';
//        });
//      }
////        print("*");
//      setState(() {
//        _pyramid = _pyramid + '\n';
//      });
////      println();
//    }
//    setState(() {
//      _pyramid = _pyramid + '\n';
//    });
//    println();

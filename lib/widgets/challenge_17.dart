import 'dart:math';

import 'package:flutter/material.dart';

int count = 0;
int mod1;
int mod2;
int mod1max;
int mod2max;

class Challenge17 extends StatefulWidget {
  @override
  _Challenge17State createState() => _Challenge17State();
}

class _Challenge17State extends State<Challenge17> {
  var _mod1Controller;

  var _mod1maxController;
  var _mod1Msg = '';
  var _mod2Msg = '';
  var _ASMsg = '';
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
                  mod1max = int.parse(value);
                },
                controller: _mod1maxController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Module 1 max points:",
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
                    hintText: "Enter Module 2 max points:",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            RaisedButton(
              child: Text('Calculate'),
              onPressed: () {
                convertToGrade(mod1max, mod1, mod2max, mod2);
              },
            ),
            _mod1Msg != '' ? Text(_mod1Msg) : Text(''),
            _mod2Msg != '' ? Text(_mod2Msg) : Text(''),
            _ASMsg != '' ? Text(_ASMsg) : Text(''),
          ]),
        ),
      ),
    );
  }

  void convertToGrade(int mod1max, int mod1, int mod2max, int mod2) {
//    System.out.println();
    double mod1per = (mod1 / mod1max).toDouble();
    if (mod1per >= 0.8)
      setState(() {
        _mod1Msg = "Module 1: A";
      });
//      print("Module 1: A");
    else if (mod1per < 0.8 && mod1per >= 0.7)
//      print("Module 1: B");
      setState(() {
        _mod1Msg = "Module 1: B";
      });
    else if (mod1per < 0.7 && mod1per >= 0.6)
      setState(() {
        _mod1Msg = "Module 1: C";
      });
//      print("Module 1: C");
    else if (mod1per < 0.6 && mod1per >= 0.5)
//      print("Module 1: D");
      setState(() {
        _mod1Msg = "Module 1: D";
      });
    else if (mod1per < 0.5)
      setState(() {
        _mod1Msg = "Module 1: F";
      });
//      print("Module 1: F");

    double mod2per = (mod2 / mod2max).toDouble();
    if (mod2per >= 0.8)
      setState(() {
        _mod2Msg = "Module 2: A";
      });
//      print("Module 2: A");
    else if (mod2per < 0.8 && mod2per >= 0.7)
      setState(() {
        _mod2Msg = "Module 2: B";
      });
//      print("Module 2: B");
    else if (mod2per < 0.7 && mod2per >= 0.6)
//      print("Module 2: C");
      setState(() {
        _mod2Msg = "Module 2: C";
      });
    else if (mod2per < 0.6 && mod2per >= 0.5)
//      print("Module 2: D");
      setState(() {
        _mod2Msg = "Module 2: D";
      });
    else if (mod2per < 0.5)
      setState(() {
        _mod2Msg = "Module 2: F";
      });
//      print("Module 2: F");

    double asPerc = (mod1per + mod2per) / 2;
    if (asPerc >= 0.8)
      setState(() {
        _ASMsg = "AS Level: A";
      });
//      print("AS Level: A");
    else if (asPerc < 0.8 && asPerc >= 0.7)
      setState(() {
        _ASMsg = "AS Level: B";
      });
//      print("AS Level: B");
    else if (asPerc < 0.7 && asPerc >= 0.6)
//      print("AS Level: C");
      setState(() {
        _ASMsg = "AS Level: C";
      });
    else if (asPerc < 0.6 && asPerc >= 0.5)
//      print("AS Level: D");
      setState(() {
        _ASMsg = "AS Level: D";
      });
    else if (asPerc < 0.5)
      setState(() {
        _ASMsg = "AS Level: F";
      });
//      print("AS Level: F");
  }
}

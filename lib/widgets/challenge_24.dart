import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Results {
  String _homeTeam;

  String get homeTeam => _homeTeam;

  set homeTeam(String homeTeam) {
    _homeTeam = homeTeam;
  }

  String _awayTeam;

  String get awayTeam => _awayTeam;

  set awayTeam(String awayTeam) {
    _awayTeam = awayTeam;
  }

  int _homeTeamScore;

  int get homeTeamScore => _homeTeamScore;

  set homeTeamScore(int homeTeamScore) {
    _homeTeamScore = homeTeamScore;
  }

  int _awayTeamScore;

  int get awayTeamScore => _awayTeamScore;

  set awayTeamScore(int awayTeamScore) {
    _awayTeamScore = awayTeamScore;
  }
}

var homeTeamName;
int homeTeamScore;
var awayTeamName;
int awayTeamScore;
var search;
int i;

class Challenge24 extends StatefulWidget {
  @override
  _Challenge24State createState() => _Challenge24State();
}

class _Challenge24State extends State<Challenge24> {
  var myArr = [];
//  dynamic res = new List.generate(10, (_) => new List(1));
  var myres = new List();
  var xCo;
  var yCo;
  bool _clicked = false;

//  var _XController;

  String _msg;

  var _HNTController;

  @override
  Widget build(BuildContext context) {
//    for (int i = 0; i < myres.length; i++) {
//      myres[i] = new Results();
//      print(myres[i].awayTeam);
////      myres.h
//    }
//    myres[0] = new Results();
//    print(myres[0].toString());
//    var _YController;
    var _HTSController;
    var _ATNController;
    var _ATSController;
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
                  homeTeamName = value;
                },
                controller: _HNTController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Home team name?",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  homeTeamScore = int.parse(value);
                },
                controller: _HTSController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Home team score?",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  awayTeamName = value;
                },
                controller: _ATNController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Away team name?",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  awayTeamScore = int.parse(value);
                },
                controller: _ATSController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Away team score?",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),

            RaisedButton(
              child: Text('Add a result'),
              onPressed: () {
//                print(myres);
                i = 0;

                var resObj = new Results();
                resObj.homeTeam = homeTeamName;
                resObj.awayTeamScore = awayTeamScore;
                resObj.awayTeam = awayTeamName;
                resObj.homeTeamScore = homeTeamScore;
                myres.insert(i, resObj);
                print(myres);
                i++;
//                _clicked = true;
              },
            ),
            RaisedButton(
              child: Text('Reset'),
              onPressed: () {
                myres = [];
                print(myres);
                i = 0;
                setState(() {
                  _msg = '';
                });
              },
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  search = value;
                },
                controller: _ATSController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "which team to search for its result?",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            RaisedButton(
              child: Text('Search for a result'),
              onPressed: () {
                if (myres.isEmpty) {
                  print('empty');
                  setState(() {
                    _msg =
                        'The results array is empty, please add results first';
                  });
                } else {
                  for (int j = 0; j < myres.length; j++) {
                    if (myres[j].awayTeam == search) {
                      setState(() {
                        _msg = 'Home team: ' +
                            myres[j].homeTeam +
                            " " +
                            "Score: " +
                            myres[j].homeTeamScore.toString() +
                            " - " +
                            "Away Team: " +
                            myres[j].awayTeam +
                            " " +
                            "Score: " +
                            myres[j].awayTeamScore.toString();
                      });
                    } else if (myres[j].homeTeam == search) {
                      setState(() {
                        _msg = "HomeTeam: " +
                            myres[j].homeTeam +
                            " " +
                            "Score: " +
                            myres[j].homeTeamScore.toString() +
                            " - " +
                            "AwayTeam: " +
                            myres[j].awayTeam +
                            " " +
                            "Score: " +
                            myres[j].awayTeamScore.toString();
                      });
                    } else {
                      setState(() {
                        _msg = "No results for this team";
                      });
                    }
                  }
                }
              },
            ),
//
            _msg != null ? Text(_msg) : Text(''),
          ],
        ),
      )),
    );
  }
}

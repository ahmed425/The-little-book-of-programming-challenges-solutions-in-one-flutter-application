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
                for (int i = 0; i < myres.length; i++) {
                  if (myres[i].awayTeam == search) {
                    setState(() {
                      _msg = 'Home team: ' +
                          myres[i].homeTeam +
                          " " +
                          "Score: " +
                          myres[i].homeTeamScore.toString() +
                          " - " +
                          "Away Team: " +
                          myres[i].awayTeam +
                          " " +
                          "Score: " +
                          myres[i].awayTeamScore.toString();
                    });
                  } else if (myres[i].homeTeam == search) {
                    setState(() {
                      _msg = "HomeTeam: " +
                          myres[i].homeTeam +
                          " " +
                          "Score: " +
                          myres[i].homeTeamScore.toString() +
                          " - " +
                          "AwayTeam: " +
                          myres[i].awayTeam +
                          " " +
                          "Score: " +
                          myres[i].awayTeamScore.toString();
                    });
                  } else {
                    setState(() {
                      _msg = "No results for this team";
                    });
                  }
//                      System.out.println("No results for this team");
//                  }catch(NullPointerException e){

//                }
                }
//                setState(() {
////                  _clicked = true;
//                });
//                getTextWidgets();
              },
            ),
//            RaisedButton(
//              child: Text('Hide Array'),
//              onPressed: () {
//                setState(() {
//                  _clicked = false;
//                });
////                getTextWidgets();
//              },
//            ),
//            RaisedButton(
//              child: Text('Try to guess the 1 position in the array'),
//              onPressed: () {
////                getTextWidgets();
//                if (x[xCo][yCo] == 1) {
//                  setState(() {
//                    _msg = 'Success';
//                  });
//                } else {
//                  setState(() {
//                    _msg = 'Not correct,Try again';
//                  });
//                }
//              },
//            ),

//            getTextWidgets(),
//            x != null && _clicked ? Text(x.toList().toString()) : Text(''),
            _msg != null ? Text(_msg) : Text(''),
//            getTextWidgets(),
//          for (int i = 0; i < x.length; i++) {
////            Text('')
//                  for (int j = 0; j < x[i].length; j++) {
//                 return new  Text('');
//                  }
//    }
//
//            RaisedButton(
//              child: Text('Display Array with background'),
//              onPressed: () {
//                for (int i = 0; i < x.length; i++) {
//                  for (int j = 0; j < x[i].length; j++) {
////                    x[i][j] = rnd.nextInt(15);
//        (x[i][j].toString() + "\t");
//                  }
//      print("\n");
//                }
//              },
//            ),
          ],
        ),
      )),
    );
  }

//  Widget getTextWidgets() {
//    List<Widget> list = new List<Widget>();
//    for (int i = 0; i < x.length; i++) {
//      for (int j = 0; j < x[i].length; j++) {
////        x[i][j] = rnd.nextInt(15);
//        list.add(Container(child: new Text(x[i][j].toString())));
//
////        print(x[i][j].toString() + "\t");
//      }
//      return new Row(children: list);
//
////      print("\n");
//    }
//    return new Row(children: list);
//  }

//  void createArr() {
//    Random rnd = new Random();
//
//    for (int i = 0; i < x.length; i++) {
//      for (int j = 0; j < x[i].length; j++) {
//        setState(() {
//          x[i][j] = rnd.nextInt(15);
//        });
////        print(x[i][j].toString() + "\t");
//      }
////      print("\n");
//    }
//    print(x.toString());
//  }
}

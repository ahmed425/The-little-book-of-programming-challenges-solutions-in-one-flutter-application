import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List<int> text = [1, 2, 3, 4];
var choice = '';
Random rnd = new Random();
int turns = 10;
//int lives = 2;
int n1 = 0;
int n2_1;
int n2_2;
int n2_3;
int n2_4;
int n2_5;
int n2_6;
int n2_7;
int n2_8;
int n2_9;

const String HOL = 'Higher(H) or Lower(L)?';

class Challenge14 extends StatefulWidget {
  @override
  _Challenge14State createState() => _Challenge14State();
}

class _Challenge14State extends State<Challenge14> {
  String _startingText = '';
  String _invalid = '';

  String _loseMsg1 = '';
  String _loseMsg2 = '';

  String _livesMsg1 = '';
  String _livesMsg2 = '';

  String _nxtMsg = '';

  String _winMsg = '';
  var _clicked = 0;

  @override
  Widget build(BuildContext context) {
    var _choiceController;

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
//              Container(
//                child: Text('You have 2 lives'),
//              ),
              RaisedButton(
                child: Text('Play'),
                onPressed: () {
                  if (_clicked == 0) {
                    n1 = rnd.nextInt(13) + 1;
                  }
                  play();
                },
              ),
              RaisedButton(
                child: Text('Restart the game'),
                onPressed: () {
                  setState(() {
                    _clicked = 0;
                    _startingText = '';
                    _nxtMsg = '';
                    _loseMsg2 = '';
                    _loseMsg1 = '';
                    _winMsg = '';
                    _livesMsg1 = '';
                    _invalid = '';
                  });
                },
              ),

              _startingText != '' && _clicked == 1
                  ? Text(_startingText)
                  : Text(''),
              _invalid != '' ? Text(_invalid) : Text(''),
              _nxtMsg != '' ? Text(_nxtMsg) : Text(''),

              _loseMsg1 != '' ? Text(_loseMsg1) : Text(''),
              _winMsg != '' ? Text(_winMsg) : Text(''),
              _loseMsg2 != '' ? Text(_loseMsg2) : Text(''),

              _livesMsg1 != '' ? Text(_livesMsg1) : Text(''),
              _livesMsg2 != '' ? Text(_livesMsg2) : Text(''),
              _clicked != 0
                  ? Text("Turn number" + _clicked.toString())
                  : Text(''),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Colors.grey[200]))),
                child: TextField(
                  onChanged: (value) {
                    choice = value;
                    print(choice);
                  },
                  controller: _choiceController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Higher(H) or Lower(L)?",
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  play() {
    setState(() {
      _clicked++;
    });
    if (_clicked == 1) {
      setState(() {
        _startingText = "Starting number is : " + n1.toString();
      });
      n2_1 = rnd.nextInt(13) + 1;
      setState(() {
        _nxtMsg = "Next number is " + n2_1.toString();
      });
      if (choice == "H" && n2_1 < n1) {
        setState(() {
          _loseMsg1 =
              'You lose,try again from the beginning , press restart then play';
        });
      } else if (choice == "L" && n2_1 > n1) {
        setState(() {
          _loseMsg2 =
              'You lose,try again from the beginning , press restart then play';
        });
      }

//      else {
//        n2_1 = rnd.nextInt(13) + 1;
//
//        setState(() {
//          _nxtMsg = 'Next number   ' + n2_1.toString();
//        });
//      }
    } else if (_clicked == 2) {
      n2_2 = rnd.nextInt(13) + 1;
      setState(() {
        _nxtMsg = 'Next number   ' + n2_2.toString();
      });
      if (choice == "H" && n2_2 < n2_1) {
        setState(() {
          _loseMsg1 =
              'You lose,try again from the beginning , press restart then play';
        });
      } else if (choice == "L" && n2_2 > n2_1) {
        setState(() {
          _loseMsg2 =
              'You lose,try again from the beginning , press restart then play';
        });
      }
    } else if (_clicked == 3) {
      n2_3 = rnd.nextInt(13) + 1;
      setState(() {
        _nxtMsg = 'Next number   ' + n2_3.toString();
      });
      if (choice == "H" && n2_3 < n2_2) {
        setState(() {
          _loseMsg1 =
              'You lose,try again from the beginning , press restart then play';
        });
      } else if (choice == "L" && n2_3 > n2_2) {
        setState(() {
          _loseMsg2 =
              'You lose,try again from the beginning , press restart then play';
        });
      }
    } else if (_clicked == 4) {
      n2_4 = rnd.nextInt(13) + 1;
      setState(() {
        _nxtMsg = 'Next number   ' + n2_4.toString();
      });
      if (choice == "H" && n2_4 < n2_3) {
        setState(() {
          _loseMsg1 =
              'You lose,try again from the beginning , press restart then play';
        });
      } else if (choice == "L" && n2_4 > n2_3) {
        setState(() {
          _loseMsg2 =
              'You lose,try again from the beginning , press restart then play';
        });
      }
    } else if (_clicked == 5) {
      n2_5 = rnd.nextInt(13) + 1;
      setState(() {
        _nxtMsg = 'Next number   ' + n2_5.toString();
      });
      if (choice == "H" && n2_5 < n2_4) {
        setState(() {
          _loseMsg1 =
              'You lose,try again from the beginning , press restart then play';
        });
      } else if (choice == "L" && n2_5 > n2_4) {
        setState(() {
          _loseMsg2 =
              'You lose,try again from the beginning , press restart then play';
        });
      }
    } else if (_clicked == 6) {
      n2_6 = rnd.nextInt(13) + 1;
      setState(() {
        _nxtMsg = 'Next number   ' + n2_6.toString();
      });
      if (choice == "H" && n2_6 < n2_5) {
        setState(() {
          _loseMsg1 =
              'You lose,try again from the beginning , press restart then play';
        });
      } else if (choice == "L" && n2_6 > n2_5) {
        setState(() {
          _loseMsg2 =
              'You lose,try again from the beginning , press restart then play';
        });
      }
    } else if (_clicked == 7) {
      n2_7 = rnd.nextInt(13) + 1;
      setState(() {
        _nxtMsg = 'Next number   ' + n2_7.toString();
      });
      if (choice == "H" && n2_7 < n2_6) {
        setState(() {
          _loseMsg1 =
              'You lose,try again from the beginning , press restart then play';
        });
      } else if (choice == "L" && n2_7 > n2_6) {
        setState(() {
          _loseMsg2 =
              'You lose,try again from the beginning , press restart then play';
        });
      }
    } else if (_clicked == 8) {
      n2_8 = rnd.nextInt(13) + 1;
      setState(() {
        _nxtMsg = 'Next number   ' + n2_8.toString();
      });
      if (choice == "H" && n2_8 < n2_7) {
        setState(() {
          _loseMsg1 =
              'You lose,try again from the beginning , press restart then play';
        });
      } else if (choice == "L" && n2_8 > n2_7) {
        setState(() {
          _loseMsg2 =
              'ou lose,try again from the beginning , press restart then play';
        });
      }
    } else if (_clicked == 9) {
      n2_9 = rnd.nextInt(13) + 1;
      setState(() {
        _nxtMsg = 'Next number   ' + n2_9.toString();
      });
      if (choice == "H" && n2_9 < n2_8) {
        setState(() {
          _loseMsg1 =
              'You lose,try again from the beginning , press restart then play';
        });
      } else if (choice == "L" && n2_9 > n2_8) {
        setState(() {
          _loseMsg2 =
              'You lose,try again from the beginning , press restart then play ';
        });
      }
    }

    if (_clicked == 10 && _loseMsg1 == '' && _loseMsg2 == '') {
      setState(() {
        _winMsg = 'You win';
      });
    }
  }
}

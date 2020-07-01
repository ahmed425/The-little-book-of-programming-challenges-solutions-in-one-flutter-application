import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Random rnd = new Random();

final int n = rnd.nextInt(10) + 20;

class Challenge13 extends StatefulWidget {
  @override
  _Challenge13State createState() => _Challenge13State();
}

class _Challenge13State extends State<Challenge13> {
  var _userController;
  String removeMsg = '';
  String winMsg = '';
//  String lefMsg = '';
  int player = 0;
  int comp;
  var startingNumber = n;

//  String removeMsg1;
//  String leftMsg1;
//  String removeMsg2;
//  String leftMsg2;
//  String removeMsg3;
//  String leftMsg3;

  String leftMsg = '';

  String removeMsg1 = '';

  @override
  Widget build(BuildContext context) {
    print(n.toString());
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
              startingNumber != 0
                  ? Text('Starting number/Left: ' +
                      ' ' +
                      startingNumber.toString())
                  : Text(''),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Colors.grey[200]))),
                child: TextField(
                  controller: _userController,
                  onChanged: (value) {
                    setState(() {
                      player = int.parse(value);
                    });
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "How many do you want to remove?",
                      hintStyle: TextStyle(color: Colors.grey)),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    WhitelistingTextInputFormatter.digitsOnly
                  ],
                ),
              ),
//              Text('How many do you want to remove?'),
              removeMsg1 != '' ? Text(removeMsg1) : Text(''),
              removeMsg != '' ? Text(removeMsg) : Text(''),

              leftMsg != '' ? Text(leftMsg) : Text(''),
//              removeMsg2 != null ? Text(removeMsg2) : Text(''),
//              removeMsg3 != null ? Text(removeMsg3) : Text(''),
//              leftMsg2 != null ? Text(leftMsg2) : Text(''),
//              leftMsg3 != null ? Text(leftMsg3) : Text(''),
              Text(winMsg),
              RaisedButton(
                child: Text('play'),
                onPressed: () {
                  setState(() {
                    removeMsg1 = 'Yoy removed : ' + ' ' + player.toString();
                  });
//                  setState(() {
//                    n = rnd.nextInt(10) + 20;
//                  });
//if(_clicked){
                  if (startingNumber > 0) {
                    print('player' + '  is : ' + player.toString());
//                    print("How many do you want to remove? ");
                    if (player < 1 || player > 3) {
                      print("Invalid input. How many do you want to remove?");
                    }
                    if (startingNumber == 3 && player == 3) {
                      setState(() {
                        leftMsg = '';
                        removeMsg = '';
                        removeMsg1 = '';

                        winMsg = "Computer wins";
                      });
                      print("Computer wins");
                    } else if (startingNumber == 2 && player == 2) {
                      setState(() {
                        leftMsg = '';
                        removeMsg = '';
                        removeMsg1 = '';
                        winMsg = "Computer wins";
                      });

                      print("Computer wins");
                    } else if (startingNumber == 1 && player == 1) {
                      setState(() {
                        leftMsg = '';
                        removeMsg = '';
                        removeMsg1 = '';
                        winMsg = "Computer wins";
                      });
                      print("Computer wins");
                    }
                    setState(() {
                      startingNumber -= player;
                    });
                    setState(() {
                      leftMsg = startingNumber.toString() + " left";
                    });
                    print(startingNumber.toString() + " left");

                    setState(() {
                      comp = 0;
                    });
                    if (startingNumber == 1) {
                      setState(() {
                        leftMsg = '';
                        removeMsg = '';
                        removeMsg1 = '';
                        winMsg = "You win";
                      });
                      print("You win");
                    } else if (startingNumber == 2) {
                      startingNumber -= 1;
                      setState(() {
                        removeMsg = "Computer removes 1";
                      });
                      print("Computer removes 1");
                      print(startingNumber.toString() + " left");
                    } else if (startingNumber == 3) {
                      startingNumber -= 2;
                      setState(() {
                        removeMsg = "Computer removes 2";
                      });
                      print("Computer removes 2");
                      setState(() {
                        leftMsg = startingNumber.toString() + " left";
                      });
                      print(startingNumber.toString() + " left");
                    } else if (startingNumber > 3) {
                      setState(() {
                        comp = rnd.nextInt(3) + 1;
                        removeMsg = "Computer removes " + comp.toString();
                      });

                      print("Computer removes " + comp.toString());

                      if ((startingNumber -= comp) > 0) {
                        setState(() {
                          leftMsg = startingNumber.toString() + " left";
                        });
                        print(startingNumber.toString() + " left");
                      } else {
                        setState(() {
                          leftMsg = '';
                          removeMsg = '';
                          removeMsg1 = '';
                          winMsg = "You win";
                        });
                        print("You win");
                      }
                    }
                  }
                },
              ),
              RaisedButton(
                child: Text('Restart'),
                onPressed: () {
                  setState(() {
                    leftMsg = '';
                    removeMsg = '';
                    winMsg = '';
                    removeMsg1 = '';
                    startingNumber = rnd.nextInt(10) + 20;
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

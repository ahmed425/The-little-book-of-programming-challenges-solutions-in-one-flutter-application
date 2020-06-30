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
  String lefMsg = '';
  int player = 0;
  int comp;

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
          padding: EdgeInsets.all(4),
          child: Column(
            children: <Widget>[
              n != 0
                  ? Text('Starting number: ' + ' ' + n.toString())
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
              Text(lefMsg),
              Text(removeMsg),
              Text(lefMsg),
              Text(winMsg),
              RaisedButton(
                child: Text('play'),
                onPressed: () {
                  var startingNumber = n;
//                  setState(() {
//                    n = rnd.nextInt(10) + 20;
//                  });

                  while (startingNumber > 0) {
                    print('player' + '  is : ' + player.toString());
//                    print("How many do you want to remove? ");
                    if (player < 1 || player > 3) {
                      print("Invalid input. How many do you want to remove?");
                    }
                    if (startingNumber == 3 && player == 3) {
                      setState(() {
                        winMsg = "Computer wins";
                      });
                      print("Computer wins");
                      break;
                    } else if (startingNumber == 2 && player == 2) {
                      setState(() {
                        winMsg = "Computer wins";
                      });

                      print("Computer wins");
                      break;
                    } else if (startingNumber == 1 && player == 1) {
                      setState(() {
                        winMsg = "Computer wins";
                      });
                      print("Computer wins");
                      break;
                    }
                    startingNumber -= player;
                    setState(() {
                      lefMsg = startingNumber.toString() + " left";
                    });
                    print(startingNumber.toString() + " left");

                    setState(() {
                      comp = 0;
                    });
                    if (startingNumber == 1) {
                      setState(() {
                        winMsg = "You win";
                      });
                      print("You win");
                      break;
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
                        lefMsg = startingNumber.toString() + " left";
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
                          lefMsg = startingNumber.toString() + " left";
                        });
                        print(startingNumber.toString() + " left");
                      } else {
                        setState(() {
                          winMsg = "You win";
                        });
                        print("You win");
                        break;
                      }
                    }
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

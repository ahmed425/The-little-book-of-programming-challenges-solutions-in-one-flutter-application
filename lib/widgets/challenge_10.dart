import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:math';

class ChallengeTen extends StatefulWidget {
  @override
  _ChallengeTenState createState() => _ChallengeTenState();
}

class _ChallengeTenState extends State<ChallengeTen> {
  var rock = '1';
  var paper = '2';
  var scissors = '3';
  dynamic userChoice;
  dynamic computerChoice = 0;
  var rand = new Random();
  var _userChoiceController;

  bool _clicked = false;
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Rock, Paper, Scissors Game\n====================== \n Make your choice: \n 1 - Rock \n 2 - Paper \n 3 - Scissors'),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    userChoice = value;
                  });
                },
                controller: _userChoiceController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "enter your choice",
                    hintStyle: TextStyle(color: Colors.grey)),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
              ),
            ),
            RaisedButton(
              child: Text('Play'),
              onPressed: () {
                var myRandom = rand.nextInt(4);
                setState(() {
                  _clicked = !_clicked;
                  if (myRandom != 0) {
                    computerChoice = myRandom;
                  }
                  print(computerChoice);
                  print(computerChoice.toString() == userChoice.toString());
                });
              },
            ),
            computerChoice != 0
                ? (userChoice.toString() == computerChoice.toString()
                    ? Text('The computer chose the same as you so it is a draw')
                    : userChoice.toString() == rock
                        ? (computerChoice.toString() == paper
                            ? Text('The computer chose paper so you lose')
                            : Text('The computer chose scissors so you win'))
                        : userChoice.toString() == paper
                            ? (computerChoice.toString() == scissors
                                ? Text(
                                    'The computer chose scissors so you lose')
                                : Text('The computer chose rock so you win'))
                            : userChoice.toString() == scissors
                                ? (computerChoice.toString() == rock
                                    ? Text(
                                        'The computer chose rock so you lose')
                                    : Text(
                                        'The computer chose paper so you win'))
                                : Text('incorrect input'))
                : Container(),
            computerChoice != 0
                ? Text('The computer Choice is : ' +
                    ' ' +
                    computerChoice.toString())
                : Container(),
            computerChoice.toString() == '1'
                ? Text('The computer Choice is : ' + ' ' + 'rock')
                : computerChoice.toString() == '2'
                    ? Text('The computer Choice is : ' + ' ' + 'paper')
                    : Text('The computer Choice is : ' + ' ' + 'scissors')

//                ? Text('equal')
//                : Text('not')
//            _clicked ? Text('$distance') : Container(),
          ],
        ),
      ),
    );
  }
}

import 'package:encrypt/encrypt.dart';
import 'package:flutter/cupertino.dart' hide Key;
import 'package:flutter/material.dart' hide Key;

int position;

class Challenge20 extends StatefulWidget {
  @override
  _Challenge20State createState() => _Challenge20State();
}

class _Challenge20State extends State<Challenge20> {
  var _positionController;

  int myFib;

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
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  position = int.parse(value);
                },
                controller: _positionController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter position in the sequence",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            RaisedButton(
              child: Text('Get Fibonacci number'),
              onPressed: () {
                setState(() {
                  myFib = getFibonacci(position);
                });
              },
            ),
            myFib != null
                ? Text('Fibonacci number is : ' + ' ' + myFib.toString())
                : Text('')
          ],
        ),
      )),
    );
  }

  int getFibonacci(int position) {
    if (position == 0) return 0;
    if (position <= 2) return 1;

    int fib = getFibonacci(position - 1) + getFibonacci(position - 2);
    return fib;
  }
}

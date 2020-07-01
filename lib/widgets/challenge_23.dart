import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Challenge23 extends StatefulWidget {
  @override
  _Challenge23State createState() => _Challenge23State();
}

class _Challenge23State extends State<Challenge23> {
  var myArr = [];
  var x = new List.generate(10, (_) => new List(10));
  var xCo;
  var yCo;
  bool _clicked = false;

  var _XController;

  String _msg;

  @override
  Widget build(BuildContext context) {
    var _YController;
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
                  xCo = int.parse(value);
                },
                controller: _XController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter X coordinate",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  yCo = int.parse(value);
                },
                controller: _YController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Y coordinate",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),

            RaisedButton(
              child: Text('Generate New Array'),
              onPressed: () {
//                _clicked = true;
                createArr();
              },
            ),

            RaisedButton(
              child: Text('Display Array'),
              onPressed: () {
                setState(() {
                  _clicked = true;
                });
//                getTextWidgets();
              },
            ),
            RaisedButton(
              child: Text('Hide Array'),
              onPressed: () {
                setState(() {
                  _clicked = false;
                });
//                getTextWidgets();
              },
            ),
            RaisedButton(
              child: Text('Try to guess the 1 position in the array'),
              onPressed: () {
//                getTextWidgets();
                if (x[xCo][yCo] == 1) {
                  setState(() {
                    _msg = 'Success';
                  });
                } else {
                  setState(() {
                    _msg = 'Not correct,Try again';
                  });
                }
              },
            ),

//            getTextWidgets(),
            x != null && _clicked ? Text(x.toList().toString()) : Text(''),
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

  Widget getTextWidgets() {
    List<Widget> list = new List<Widget>();
    for (int i = 0; i < x.length; i++) {
      for (int j = 0; j < x[i].length; j++) {
//        x[i][j] = rnd.nextInt(15);
        list.add(Container(child: new Text(x[i][j].toString())));

//        print(x[i][j].toString() + "\t");
      }
      return new Row(children: list);

//      print("\n");
    }
    return new Row(children: list);
  }

  void createArr() {
    Random rnd = new Random();

    for (int i = 0; i < x.length; i++) {
      for (int j = 0; j < x[i].length; j++) {
        setState(() {
          x[i][j] = rnd.nextInt(15);
        });
//        print(x[i][j].toString() + "\t");
      }
//      print("\n");
    }
    print(x.toString());
  }
}

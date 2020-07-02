import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Challenge22 extends StatefulWidget {
  @override
  _Challenge22State createState() => _Challenge22State();
}

class _Challenge22State extends State<Challenge22> {
  var myArr = [];
  var x = new List.generate(10, (_) => new List(10));

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
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Display Array on screen'),
              onPressed: () {
                _clicked = true;
                createArr();
              },
            ),
            x != null && _clicked ? Text(x.toList().toString()) : Text(''),
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

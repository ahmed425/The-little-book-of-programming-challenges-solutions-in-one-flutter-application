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
//            Container(
//              padding: EdgeInsets.all(10),
//              decoration: BoxDecoration(
//                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
//              child: TextField(
//                onChanged: (value) {
//                  name = value;
//                },
//                controller: _nameController,
//                decoration: InputDecoration(
//                    border: InputBorder.none,
//                    hintText: "Enter a name",
//                    hintStyle: TextStyle(color: Colors.grey)),
//              ),
//            ),
            RaisedButton(
              child: Text('Display Array'),
              onPressed: () {
                _clicked = true;
                createArr();
              },
            ),
//            RaisedButton(
//              child: Text('Display Array'),
//              onPressed: () {
//                getTextWidgets();
//              },
//            ),
//            getTextWidgets(),
            x != null && _clicked ? Text(x.toList().toString()) : Text(''),
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

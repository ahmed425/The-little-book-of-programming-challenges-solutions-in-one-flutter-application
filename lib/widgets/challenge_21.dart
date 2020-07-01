import 'package:encrypt/encrypt.dart';
import 'package:flutter/cupertino.dart' hide Key;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart' hide Key;

int position;
String name;

class Challenge21 extends StatefulWidget {
  @override
  _Challenge21State createState() => _Challenge21State();
}

class _Challenge21State extends State<Challenge21> {
  var inputs = [];

  var _nameController;

  var _duplicated;

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
                  name = value;
                },
                controller: _nameController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter a name",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            RaisedButton(
              child: Text('Add name'),
              onPressed: () {
                setState(() {
                  inputs.add(name);
                });
              },
            ),
            RaisedButton(
              child: Text('Check duplication'),
              onPressed: () {
                checkDuplication();
              },
            ),
//            RaisedButton(
//              child: Text('Exit'),
//              onPressed: () {
//                setState(() {
//                  inputs = inputs;
//                });
//              },
//            ),
            RaisedButton(
              child: Text('Reset array'),
              onPressed: () {
                setState(() {
                  inputs = [];
                });
              },
            ),
            inputs != null ? Text(inputs.toString()) : Text(''),
            _duplicated != null
                ? Text('Duplicated name is : ' + ' ' + _duplicated)
                : Text(''),
          ],
        ),
      )),
    );
  }

  void checkDuplication() {
    for (int i = 0; i < inputs.length; i++) {
      for (int j = i + 1; j < inputs.length; j++) {
        if (inputs[i] == (inputs[j])) {
          setState(() {
            _duplicated = inputs[i];
          });
          print(inputs[i]);
          print(inputs[j]);
        }
      }
    }
  }
}

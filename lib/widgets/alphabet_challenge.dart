import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlphabetTyping extends StatefulWidget {
  @override
  _AlphabetTypingState createState() => _AlphabetTypingState();
}

class _AlphabetTypingState extends State<AlphabetTyping> {
  var _startTime;
  var _endTime;
  var _difference;
  var correctAlphabet = "abcdefghijklmnopqrstuvwxyz";
  var userAlphabet;

  var _alphabetController;

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
          padding: EdgeInsets.all(4),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: Colors.grey[200]))),
                child: TextField(
                  controller: _alphabetController,
                  onChanged: (value) {
                    setState(() {
                      userAlphabet = value;
                    });
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "type the alphabet",
                      hintStyle: TextStyle(color: Colors.grey)),
                  keyboardType: TextInputType.text,
//                inputFormatters: <TextInputFormatter>[
//                  WhitelistingTextInputFormatter.digitsOnly
//                ],
                ),
              ),
              RaisedButton(
                child: Text('Press when you are ready'),
                onPressed: () {
                  setState(() {
                    _startTime = DateTime.now().second;
                  });
                },
              ),
              RaisedButton(
                child: Text('Press when you finish typing the alphabet'),
                onPressed: () {
                  setState(() {
                    _clicked = !_clicked;
                    _endTime = DateTime.now().second;
                    userAlphabet == correctAlphabet
                        ? _difference = _endTime - _startTime
                        : _difference = null;
                  });
                  print(_difference.toString());
                },
              ),
              _difference != null
                  ? Text(('the time you took is :  ' + _difference.toString()) +
                      ' ' +
                      'Seconds')
                  : _clicked == false
                      ? Container()
                      : Container(
                          child:
                              Text('you did not enter the alphabet correctly'),
                        ),
            ],
          ),
        ),
      ),
    );
  }
}

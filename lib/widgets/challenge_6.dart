import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Guessing extends StatefulWidget {
  @override
  _GuessingState createState() => _GuessingState();
}

class _GuessingState extends State<Guessing> {
  var _startTime;
  var _endTime;
//  Stopwatch _stopwatch1 = new Stopwatch();
//  Stopwatch _stopwatch2 = new Stopwatch();
  bool _pressed = false;
  var _difference;
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
              RaisedButton(
                child: Text('Press when you are ready'),
                onPressed: () {
                  setState(() {
                    _startTime = DateTime.now().second;
                  });
                },
              ),
              RaisedButton(
                child: Text('Press when you think time elapsed'),
                onPressed: () {
                  setState(() {
                    _endTime = DateTime.now().second;
                    _difference = _endTime - _startTime;
                  });
                },
              ),
              _difference != null
                  ? Text(
                      ('the time you guessed is :  ' + _difference.toString()) +
                          ' ' +
                          'Seconds')
                  : Container(),
              _difference != null
                  ? Text('Your error was : ' +
                      (10 - _difference).toString() +
                      ' ' +
                      'Seconds')
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AgeCalculate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Age(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

class Age extends StatefulWidget {
  @override
  _AgeState createState() => _AgeState();
}

class _AgeState extends State<Age> {
  DateTime _dateTime;

  bool _clicked = false;

  int _ageInDays;

  int _ageInSeconds;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(_dateTime == null
                ? 'Nothing has been picked yet'
                : _dateTime.toString()),
            RaisedButton(
              child: Text('Pick your birth date'),
              onPressed: () {
                showDatePicker(
                        context: context,
                        initialDate:
                            _dateTime == null ? DateTime.now() : _dateTime,
                        firstDate: DateTime(2001),
                        lastDate: DateTime(2021))
                    .then((date) {
                  setState(() {
                    _dateTime = date;
                    _ageInDays = DateTime.now().difference(_dateTime).inDays;
                    _ageInSeconds =
                        DateTime.now().difference(_dateTime).inSeconds;
                    _clicked = true;
                  });
                });
              },
            ),
            _clicked
                ? Text(_ageInDays.toString() +
                    '  ' +
                    'Days' +
                    '\n' +
                    _ageInSeconds.toString() +
                    '  ' +
                    'Seconds')
                : Container(),
          ],
        ),
      ),
    );
  }
}

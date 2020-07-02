import 'package:flutter/material.dart';

class VoteCheck extends StatelessWidget {
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
      body: Vote(),
    );
  }
}

class Vote extends StatefulWidget {
  @override
  _VoteState createState() => _VoteState();
}

class _VoteState extends State<Vote> {
  DateTime _dateTime;

  bool _clicked = false;

//  int _ageInDays;

//  int _ageInSeconds;

  dynamic _ageInYears;

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
                    _ageInYears =
                        (DateTime.now().difference(_dateTime).inDays) / 365;
                    _clicked = !_clicked;
                  });
                });
              },
            ),
            _clicked
                ? _ageInYears >= 18
                    ? Text('Elegible to vote')
                    : Text('Not eligible to vote')
                : Container(child: Text('you did not pick your birth date yet'))
          ],
        ),
      ),
    );
  }
}

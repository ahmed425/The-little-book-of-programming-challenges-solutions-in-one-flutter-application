import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DistanceCalculate extends StatefulWidget {
  @override
  _DistanceCalculateState createState() => _DistanceCalculateState();
}

class _DistanceCalculateState extends State<DistanceCalculate> {
  TextEditingController _speedController;
  TextEditingController _timeController;

  dynamic speed;
  dynamic time;
  dynamic distance;

  bool _clicked = false;

  void initState() {
    super.initState();
    _speedController = TextEditingController();
    _timeController = TextEditingController();
  }

  void dispose() {
    _speedController.dispose();
    _timeController.dispose();
    super.dispose();
  }

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
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    speed = value;
                  });
                },
                controller: _speedController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "enter speed",
                    hintStyle: TextStyle(color: Colors.grey)),
                keyboardType: TextInputType.number,
//                inputFormatters: <TextInputFormatter>[
//                  WhitelistingTextInputFormatter.digitsOnly
//                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                controller: _timeController,
                onChanged: (value) {
                  setState(() {
                    time = value;
                  });
                },
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "enter height",
                    hintStyle: TextStyle(color: Colors.grey)),
                keyboardType: TextInputType.number,
//                inputFormatters: <TextInputFormatter>[
//                  WhitelistingTextInputFormatter.digitsOnly
//                ],
              ),
            ),
            RaisedButton(
              child: Text('Calculate Distance'),
              onPressed: () {
                setState(() {
                  _clicked = true;
                  distance = double.parse(speed) * double.parse(time);
                });
              },
            ),
            _clicked ? Text('$distance') : Container(),
          ],
        ),
      ),
    );
  }
}

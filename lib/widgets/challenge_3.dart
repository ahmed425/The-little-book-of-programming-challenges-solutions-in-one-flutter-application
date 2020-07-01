import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RectangleArea extends StatefulWidget {
  @override
  _RectangleAreaState createState() => _RectangleAreaState();
}

class _RectangleAreaState extends State<RectangleArea> {
  TextEditingController _widthController;
  TextEditingController _heightController;

  dynamic area;
  dynamic width;
  dynamic height;

  bool _clicked = false;

  void initState() {
    super.initState();
    _widthController = TextEditingController();
    _heightController = TextEditingController();
  }

  void dispose() {
    _heightController.dispose();
    _widthController.dispose();
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
                    width = value;
                  });
                },
                controller: _widthController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "enter width",
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
                controller: _heightController,
                onChanged: (value) {
                  setState(() {
                    height = value;
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
              child: Text('Calculate Area'),
              onPressed: () {
                setState(() {
                  _clicked = true;
                  area = double.parse(width) * double.parse(height);
                });
              },
            ),
            _clicked ? Text('$area') : Container(),
          ],
        ),
      ),
    );
  }
}

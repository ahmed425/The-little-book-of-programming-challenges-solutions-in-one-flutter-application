import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LogicGates extends StatefulWidget {
  @override
  _LogicGatesState createState() => _LogicGatesState();
}

class _LogicGatesState extends State<LogicGates> {
  String _firstInput;
  String _secondInput;
  var _secondInputController;
  var _firstInputController;
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
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _firstInput = value;
                  });
                },
                controller: _firstInputController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "enter 0 or 1",
                    hintStyle: TextStyle(color: Colors.grey)),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  setState(() {
                    _secondInput = value;
                  });
                },
                controller: _secondInputController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "enter 0 or 1",
                    hintStyle: TextStyle(color: Colors.grey)),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  WhitelistingTextInputFormatter.digitsOnly
                ],
              ),
            ),
//            RaisedButton(
//              child: Text('Display OR logic gate result'),
//              onPressed: () {},
//            ),
            _firstInput.toString() == '1' || _secondInput.toString() == '1'
                ? Text('OR gate result is : ' + ' ' + '1')
                : Text('OR gate result is : ' + ' ' + '0'),
            _firstInput.toString() == '1' && _secondInput.toString() == '1'
                ? Text('AND gate result is : ' + ' ' + '1')
                : Text('AND gate result is : ' + ' ' + '0'),
            _firstInput.toString() == _secondInput.toString()
                ? Text('XOR gate result is : ' + ' ' + '0')
                : Text('XOR gate result is : ' + ' ' + '1'),
            _firstInput.toString() == '1' && _secondInput.toString() == '1'
                ? Text('NAND gate result is : ' + ' ' + '0')
                : Text('NAND gate result is : ' + ' ' + '1'),
            _firstInput.toString() == '0' && _secondInput.toString() == '0'
                ? Text('NOR gate result is : ' + ' ' + '1')
                : Text('NOR gate result is : ' + ' ' + '0'),
          ],
        ),
      ),
    );
  }
}

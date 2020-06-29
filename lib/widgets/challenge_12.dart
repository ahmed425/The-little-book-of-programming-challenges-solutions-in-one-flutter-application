import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChallengeTwelve extends StatefulWidget {
  @override
  _ChallengeTwelveState createState() => _ChallengeTwelveState();
}

class _ChallengeTwelveState extends State<ChallengeTwelve> {
  var _numberController;

  String _number;
  var _factors = [1];
  var _isPrime = '';
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
                  controller: _numberController,
                  onChanged: (value) {
                    setState(() {
                      _number = value;
                    });
                  },
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "enter height",
                      hintStyle: TextStyle(color: Colors.grey)),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    WhitelistingTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              RaisedButton(
                child: Text('Factors'),
                onPressed: () {
                  setState(() {
                    if (_clicked == false) {
                      _clicked = !_clicked;
                    }
                  });
                  for (int i = int.parse(_number) - 1; i > 1; i--) {
                    if (int.parse(_number) % i == 0) {
                      print(i);
                      _factors.add(i);
                    }
                  }
                  if (checkPrimary(int.parse(_number))) {
                    setState(() {
                      _isPrime = 'Your number is prime';
                    });
                  } else
                    setState(() {
                      _isPrime = 'Your number is not prime';
                    });
                },
              ),
//              _factors[0].toString()!=''?
              _clicked ? Text(_factors.toString()) : Text(''),
              _clicked ? Text(_isPrime) : Text('')
            ],
          ),
        ),
      ),
    );
  }

  checkFactors() {
    for (int i = int.parse(_number) - 1; i > 1; i--) {
      if (int.parse(_number) % i == 0) {
        setState(() {
          for (int j = 0; j < int.parse(_number); j++) {
            _factors[j] = i;
          }
        });
      }
    }
  }

  bool checkPrimary(int n) {
    if (n > 2 && (n & 1) == 0) return false;
    for (int i = 3; i * i <= n; i += 2) if (n % i == 0) return false;
    return true;
  }
}

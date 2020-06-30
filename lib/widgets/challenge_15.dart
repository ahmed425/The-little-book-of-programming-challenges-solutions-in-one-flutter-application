import 'package:flutter/material.dart';

class Challenge15 extends StatefulWidget {
  @override
  _Challenge15State createState() => _Challenge15State();
}

class _Challenge15State extends State<Challenge15> {
  String _sentence;

  var _sentenceController;

  String _count = "0";

  String _reversedSentence = '';

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
          child: Column(children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
              child: TextField(
                onChanged: (value) {
                  _sentence = value;
                  print(_sentence);
                },
                controller: _sentenceController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter a sentence",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            _count != "0"
                ? Text("Number of words : " + "  " + _count)
                : Text(''),
            _reversedSentence != ''
                ? Text('Reversed sentence is : ' + ' ' + _reversedSentence)
                : Text(''),
            RaisedButton(
              child: Text('how many words in this sentence?'),
              onPressed: () {
                String str = _sentence;

                //split string
                var arr = str.split(' ');
                setState(() {
                  _count = arr.length.toString();
                });

                print(arr.length.toString());
                setState(() {
                  _reversedSentence = _sentence.split('').reversed.join();
                });
                print(_reversedSentence);
              },
            )
          ]),
        ),
      ),
    );
  }
}

//String str = 'hello-world-tutorialkart';
//
////split string
//var arr = str.split('-');
//
//print(arr);

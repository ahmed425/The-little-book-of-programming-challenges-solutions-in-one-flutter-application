import 'package:encrypt/encrypt.dart';
import 'package:flutter/cupertino.dart' hide Key;
import 'package:flutter/material.dart' hide Key;

var userText = '';

class Challenge19 extends StatefulWidget {
  @override
  _Challenge19State createState() => _Challenge19State();
}

class _Challenge19State extends State<Challenge19> {
  var _userTextController;
  var encrypted;

  String decrypted;

  @override
  Widget build(BuildContext context) {
    final plainText = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit';
    final key = Key.fromLength(32);
    final iv = IV.fromLength(16);
    final encrypter = Encrypter(AES(key));

//    final encrypted = encrypter.encrypt(plainText, iv: iv);
//    final decrypted = encrypter.decrypt(encrypted, iv: iv);

//    print(decrypted);
//    print(encrypted.bytes);
//    print(encrypted.base16);
//    print(encrypted.base64);

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
                  userText = value;
                },
                controller: _userTextController,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Enter Text to encrypt",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
            RaisedButton(
              child: Text('encrypt'),
              onPressed: () {
                final key = Key.fromLength(32);
                final iv = IV.fromLength(16);
                final encrypter = Encrypter(AES(key));
                setState(() {
                  encrypted = encrypter.encrypt(userText, iv: iv);
                });
              },
            ),
            RaisedButton(
              child: Text('decrypt'),
              onPressed: () {
                final key = Key.fromLength(32);
                final iv = IV.fromLength(16);
                final encrypter = Encrypter(AES(key));

                setState(() {
                  decrypted = encrypter.decrypt(encrypted, iv: iv);
                });
              },
            ),
            userText != '' ? Text(encrypted.base16) : Text(''),
            decrypted != null ? Text(decrypted) : Text(''),
          ],
        ),
      )),
    );
  }
}

////import 'dart:math';
//
//import 'package:flutter/material.dart';
//import 'package:flutter_string_encryption/flutter_string_encryption.dart';
//
//int count = 0;
//int mod1;
//int mod2;
//int mod1max;
//int mod2max;
//String sentence;
//int userKey;
//
//class Challenge19 extends StatefulWidget {
//  @override
//  _Challenge19State createState() => _Challenge19State();
//}
//
//class _Challenge19State extends State<Challenge19> {
//  var _mod1Controller;
//  var _astriskMsg = '';
//  String _randomKey = 'Unknown';
//  String _string = "Unknown";
//  String _encrypted = "Unknown";
//  String _decrypted = "Unknown";
//
//  String _pyramid = '';
//
//  String _msg = '';
//  @override
//  initState() {
//    super.initState();
//    initPlatformState();
//  }
//
//  // Platform messages are asynchronous, so we initialize in an async method.
//  initPlatformState() async {
//    final cryptor = new PlatformStringCryptor();
//
//    final key = await cryptor.generateRandomKey();
//    print("randomKey: $key");
//
////    final string = "here is the string, here is the string.";
//    final encrypted = await cryptor.encrypt(sentence, key);
//    final decrypted = await cryptor.decrypt(encrypted, key);
//
//    assert(decrypted == sentence);
//
//    final wrongKey =
//        "jIkj0VOLhFpOJSpI7SibjA==:RZ03+kGZ/9Di3PT0a3xUDibD6gmb2RIhTVF+mQfZqy0=";
//
//    try {
//      await cryptor.decrypt(encrypted, wrongKey);
//    } on MacMismatchException {
//      print("wrongly decrypted");
//    }
//
//    final salt = "Ee/aHwc6EfEactQ00sm/0A=="; // await cryptor.generateSalt();
//    final password = "a_strong_password%./😋";
//    final generatedKey = await cryptor.generateKeyFromPassword(password, salt);
//    print("salt: $salt, key: $generatedKey");
//
//    assert(generatedKey == wrongKey);
////    userKey = key;
//    setState(() {
//      _randomKey = key;
//      _string = sentence;
//      _encrypted = encrypted;
//      _decrypted = decrypted;
//    });
//  }
//
//  @override
//  Widget build(BuildContext context) {
//    var _mod2Controller;
//    var _mod2maxController;
//    return Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.blue,
//        elevation: 0,
//        iconTheme: IconThemeData(
//          color: Colors.white, //change your color here
//        ),
//      ),
//      backgroundColor: Colors.white,
//      body: Center(
//        child: SingleChildScrollView(
//          child: Column(children: <Widget>[
//            Container(
//              padding: EdgeInsets.all(10),
//              decoration: BoxDecoration(
//                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
//              child: TextField(
//                onChanged: (value) {
//                  sentence = value;
//                },
//                controller: _mod1Controller,
//                decoration: InputDecoration(
//                    border: InputBorder.none,
//                    hintText: "Enter the sentence:",
//                    hintStyle: TextStyle(color: Colors.grey)),
//              ),
//            ),
//            Container(
//              padding: EdgeInsets.all(10),
//              decoration: BoxDecoration(
//                  border: Border(bottom: BorderSide(color: Colors.grey[200]))),
//              child: TextField(
//                onChanged: (value) {
////                  key = int.parse(value);
//                },
//                controller: _mod2Controller,
//                decoration: InputDecoration(
//                    border: InputBorder.none,
//                    hintText: "Enter key",
//                    hintStyle: TextStyle(color: Colors.grey)),
//              ),
//            ),
//
//            RaisedButton(
//              child: Text('encrypt and decrypt'),
//              onPressed: () {
//                final cryptor = new PlatformStringCryptor();
//
//                final key = cryptor.generateRandomKey();
//                print("randomKey: $key");
//
////    final string = "here is the string, here is the string.";
//                final encrypted = cryptor.encrypt(sentence, key);
//                final decrypted = cryptor.decrypt(encrypted, key);
//
//                assert(decrypted == sentence);
//
//                final wrongKey =
//                    "jIkj0VOLhFpOJSpI7SibjA==:RZ03+kGZ/9Di3PT0a3xUDibD6gmb2RIhTVF+mQfZqy0=";
//
//                try {
//                  cryptor.decrypt(encrypted, wrongKey);
//                } on MacMismatchException {
//                  print("wrongly decrypted");
//                }
//
//                final salt =
//                    "Ee/aHwc6EfEactQ00sm/0A=="; // await cryptor.generateSalt();
//                final password = "a_strong_password%./😋";
//                final generatedKey =
//                    cryptor.generateKeyFromPassword(password, salt);
//                print("salt: $salt, key: $generatedKey");
//
//                assert(generatedKey == wrongKey);
////    userKey = key;
//                setState(() {
//                  _randomKey = key;
//                  _string = sentence;
//                  _encrypted = encrypted;
//                  _decrypted = decrypted;
//                });
//              },
//            ),
////            RaisedButton(
////              child: Text('Decrypt'),
////              onPressed: () {},
////            ),
//
//            _msg != '' ? Text(_msg) : Text(''),
//            _encrypted != 'Unknown' ? Text(_encrypted) : Text(''),
//            _decrypted != 'Unknown' ? Text(_encrypted) : Text(''),
//
////            _pyramid != '' ? Text(_pyramid) : Text(''),
////            _mod2Msg != '' ? Text(_mod2Msg) : Text(''),
////            _ASMsg != '' ? Text(_ASMsg) : Text(''),
//          ]),
//        ),
//      ),
//    );
//  }
//
//  void drawStars(int s, int a) {
//    for (int i = 0; i < s; i++) {
//      setState(() {
//        _astriskMsg = _astriskMsg + '_';
//      });
//    }
//    for (int i = 0; i < a; i++) {
//      setState(() {
//        _astriskMsg = _astriskMsg + '*';
//      });
//    }
////      System.out.print("*");
//  }
//
//  void drawPyramid(int mod2max) {
//    for (int i = 1; i < mod2max; i++) {
//      for (int j = 1; j < mod2max - i; j++) {
//        setState(() {
//          _pyramid = _pyramid + " ";
//        });
//      }
//
////        System.out.print(" ");
//      for (int j = 1; j <= 2 * i - 1; j++)
//
////        System.out.print("*");
//      {
//        setState(() {
//          _pyramid = _pyramid + "*";
//        });
//      }
//      setState(() {
//        _pyramid = _pyramid + "\n";
//      });
////      System.out.println();
//    }
//    setState(() {
//      _pyramid = _pyramid + "\n";
//    });
////    System.out.println();
//  }
//}
//
////    for (int i = 1; i <= mod2max; i++) {
////      for (int j = 1; j <= mod2max - i; j++) {
////        setState(() {
////          _pyramid = _pyramid + ' ';
////        });
////      }
////      for (int j = 1; j <= 2 * i - 1; j++) {
////        setState(() {
////          _pyramid = _pyramid + '*';
////        });
////      }
//////        print("*");
////      setState(() {
////        _pyramid = _pyramid + '\n';
////      });
//////      println();
////    }
////    setState(() {
////      _pyramid = _pyramid + '\n';
////    });
////    println();

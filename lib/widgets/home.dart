import 'package:challengesahmed/widgets/challenge_10.dart';
import 'package:challengesahmed/widgets/challenge_12.dart';
import 'package:challengesahmed/widgets/challenge_13.dart';
import 'package:challengesahmed/widgets/challenge_14.dart';
import 'package:challengesahmed/widgets/challenge_17.dart';
import 'package:challengesahmed/widgets/challenge_9.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'challenge_1.dart';
import 'challenge_11.dart';
import 'challenge_15.dart';
import 'challenge_16.dart';
import 'challenge_18.dart';
import 'challenge_19.dart';
import 'challenge_2.dart';
import 'challenge_20.dart';
import 'challenge_21.dart';
import 'challenge_22.dart';
import 'challenge_23.dart';
import 'challenge_24.dart';
import 'challenge_25.dart';
import 'challenge_26.dart';
import 'challenge_27.dart';
import 'challenge_3.dart';
import 'challenge_4.dart';
import 'challenge_5.dart';
import 'challenge_6.dart';
import 'challenge_7.dart';
import 'challenge_8.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Challenges_Ahmed',
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                RaisedButton(
                  child: Text('Challenge 1'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Joke();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 2'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return HelloName();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 3'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return RectangleArea();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 4'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return DistanceCalculate();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 5'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return AgeCalculate();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 6'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Guessing();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 7'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return AlphabetTyping();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 8'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return VoteCheck();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 9'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return ChallengeNine();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 10'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return ChallengeTen();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 11'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return LogicGates();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 12 '),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return ChallengeTwelve();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 13 '),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge13();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 14'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge14();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 15'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge15();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 16'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge16();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 17'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge17();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 18'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge18();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 19'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge19();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 20'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge20();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 21'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge21();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 22'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge22();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 23'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge23();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 24'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge24();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 25'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge25();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 26'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge26();
                    }));
                  },
                ),
                RaisedButton(
                  child: Text('Challenge 27'),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Challenge27();
                    }));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

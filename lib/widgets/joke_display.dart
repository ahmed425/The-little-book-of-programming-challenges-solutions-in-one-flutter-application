import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Joke extends StatefulWidget {
  @override
  _JokeState createState() => _JokeState();
}

class _JokeState extends State<Joke> {
  var more = true;

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
              more == true
                  ? Text(
                      'Why did the chicken cross the road? Press More to find out the answer...')
                  : Text(
                      'To get to the other side!',
                      style: TextStyle(color: Colors.blue),
                    ),
              InkWell(
                onTap: () {
                  setState(() {
                    more = !more;
                  });
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      more ? 'More' : 'Less',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      more
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      size: 20.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: MagicBallApp(),
    ),
  ));
}

class MagicBallApp extends StatefulWidget {
  @override
  _MagicBallAppState createState() => _MagicBallAppState();
}

class _MagicBallAppState extends State<MagicBallApp> {
  int ballNumber = 5;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60,
          margin: EdgeInsets.only(top:30,bottom: 10),
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(
                child: Text(
                  "Magic Ball",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
             Text(
                  "Ask me anything!!!",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              
            ],
          ),
        ),
        Container(
          height: 680,
          width: double.infinity,
          color: Colors.black,
          child: TextButton(
            onPressed: () {
              setState(() {
                ballNumber = Random().nextInt(5) + 1;
                print(ballNumber);
              });
            },
            child: Image.asset('lib/img/ball$ballNumber.png'),
          ),
        ),
      ],
    );
  }
}

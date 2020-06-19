import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      title: "Magic 8 Ball",
      home: Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          title: Text("Ask me anything"),
          backgroundColor: Colors.blue[800],
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {

  int randomNumber = 1;
  
  void randomNumberGenerate() {
    setState(() {
      randomNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          padding: EdgeInsets.all(15.0),
          child: Image.asset(
              "images/ball$randomNumber.png"),
          onPressed: () {
            randomNumberGenerate();
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    BallPage()
  );
}

class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black45,
          elevation: 1.0,
          centerTitle: true,
          title: Text('Ask Me Anything'),
        ),
        body: Ball(),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = Random().nextInt(20) + 1;


  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(20) + 1;
          });
       },
       child:Image(
        image: AssetImage('images/BALL $ballNumber.png'),
        ),
    ),
    );
  }
}
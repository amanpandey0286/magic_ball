import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          title: Center(
            child: Text('Ask Me Anything'),
          ),
          backgroundColor: Colors.blue,
        ),
        body: magic_8_ball(),
      ),
    ),
  );
}

class magic_8_ball extends StatefulWidget {
  const magic_8_ball({Key? key}) : super(key: key);

  @override
  _magic_8_ballState createState() => _magic_8_ballState();
}

class _magic_8_ballState extends State<magic_8_ball> {
  int BallNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Expanded(
          child: TextButton(
            onPressed: () {
              setState(
                () {
                  BallNumber = Random().nextInt(5) + 1;
                },
              );
            },
            child: Image.asset('images/ball$BallNumber.png'),
          ),
        ),
      ),
    );
  }
}

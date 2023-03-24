import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const BallPage());
}
int ballNumber = 1;
class BallPage extends StatelessWidget {
  const BallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Center(
            child: Text('Ask Me Anything'),
          ),
        ),
        body: Ball(),
      )
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  onPressed: (){
                    setState(() {
                      randomize();
                      print('Number ');
                      print(ballNumber);
                      print('has been pressed.');
                    });
                  },child: Image.asset(
                    'images/ball$ballNumber.png',
                    width: 500,
                    height: 500,
                  ),
                )
              )
          )
        ],
      ),
    );
  }
}

void randomize(){
  ballNumber = Random().nextInt(5)+1;
}
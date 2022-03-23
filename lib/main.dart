import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: magicBall(),
  ));
}

class magicBall extends StatefulWidget {
  const magicBall({Key? key}) : super(key: key);

  @override
  State<magicBall> createState() => _magicBallState();
}

class _magicBallState extends State<magicBall> {

  int ballNum = 1;

  void randomizeBall(){
    setState(() {
      ballNum = Random().nextInt(5) + 1;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Ask Me Anything',
            style: TextStyle(
              fontSize: 35.0,
            )
          ),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: (){
                randomizeBall();
              },
              child: Image.asset('images/ball$ballNum.png')
          ),

        ],
      ),
    );
  }
}






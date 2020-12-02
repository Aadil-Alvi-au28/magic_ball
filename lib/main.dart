import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            centerTitle : true,
            title:Text('Magic Ball'),
            backgroundColor: Colors.blue.shade900,

          ),
          body: MagicBall(),
        ),

      )
  );
}
class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int click=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed: (){
                  setState(() {
                    click = Random().nextInt(5)+1;
                  });
                },
                child: Image.asset('images/ball$click.png')
            ),

          ),
        ],

      ),
    );
  }
}



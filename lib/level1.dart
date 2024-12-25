import 'package:flutter/material.dart';
import 'package:flutter_application_1/level2.dart';

class Level1 extends StatefulWidget {

  const Level1({super.key});

  @override
  State<Level1> createState() => _Level1State();
}

class _Level1State extends State<Level1> {
  int _conuter = 0;
  void updateCounter(int newCounter){
    setState(() {
      _conuter = newCounter;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_conuter.toString()),
          Level2(conuter: _conuter, updateCounter: updateCounter)
        ],
      ),

    );
  }
}
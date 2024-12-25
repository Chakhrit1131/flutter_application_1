import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/level3.dart';

class Level2 extends StatelessWidget {
  final int  conuter;
  final Function updateCounter;

  const Level2({super.key , 
  required this.conuter, 
  required this.updateCounter});

  @override
  Widget build(BuildContext context) {
    int randCounter = Random().nextInt(8)+1;
    return SizedBox(
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 29, 90, 32),
              foregroundColor: const Color.fromARGB(255, 235, 235, 235),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
            ),
            onPressed: (){
              updateCounter(randCounter);
            }, 
           child: const Text('  Set  ')),
           const  SizedBox(height: 60,),
           Level3(counter: conuter, updateCounter: updateCounter)
        ],
      ),
    );
  }
}
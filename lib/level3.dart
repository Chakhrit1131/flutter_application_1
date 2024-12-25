import 'package:flutter/material.dart';

class Level3 extends StatelessWidget {
  final int counter;
  final Function updateCounter;

  const Level3({super.key,
  required this.counter,
  required this.updateCounter});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
       style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 252, 89, 89),
              foregroundColor: Colors.blue,
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 12),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
            ),
      onPressed: (){
      updateCounter(0);
      }, 
      child:const Text('  Stop  '));
  }
}
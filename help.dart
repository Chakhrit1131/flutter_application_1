import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Help Page'),),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,),
              Text('Help Page')
          ],
        ),
      ),
    );
  }
}
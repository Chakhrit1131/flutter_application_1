import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"My Flutter Sample", 
      home: Favorite_food(),
    );
  }
 
}
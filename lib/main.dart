import 'package:flutter/material.dart';

void main() {
  runApp(LearningApp());
}

class LearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Text(
        'Hello World',
        style: TextStyle(
          color: Colors.teal,
          fontFamily: 'sans-serif',
          fontWeight: FontWeight.bold,
        ),
      )
    );
  }
}
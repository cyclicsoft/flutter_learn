import 'package:flutter/material.dart';

void main() {
  runApp(LearningApp());
}

class LearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Learn Flutter'),
          ),
          body: Center(
            child: Text(
              'Hello World',
              style: TextStyle(
                color: Colors.teal,
                fontFamily: 'sans-serif',
                fontWeight: FontWeight.bold,
                fontSize: 56.0
              ),
            ),
          ),
        ));
  }
}
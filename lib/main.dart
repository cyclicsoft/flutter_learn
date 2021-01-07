import 'package:flutter/material.dart';

void main() {
  runApp(LearningApp());
}

class LearningApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: HomePage()
    );
  }
}

class HomePage extends StatefulWidget{
  HomePage({Key key}): super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
      ),
      body: Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
              color: Colors.teal,
              fontFamily: 'sans-serif',
              fontWeight: FontWeight.bold,
              fontSize: 56.0
          ),
        ),
      ),
    );
  }
}
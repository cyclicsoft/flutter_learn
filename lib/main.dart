import 'dart:developer';

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

  bool toggle = true;

  void _toggle() {
    setState(() {
      if(toggle){
        toggle = false;
      }else{
        toggle = true;
      }
    });
  }

  _getChildWidget(){
    return toggle? Text('A text') : ElevatedButton(onPressed: (){}, child: Text('A BUTTON'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
      ),
      body: Center(
        child: _getChildWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _toggle,
        tooltip: 'Toggle body',
        child: Icon(Icons.update),
      ),
    );
  }
}
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

class _HomePageState extends State<HomePage> with TickerProviderStateMixin{
  AnimationController controller;
  CurvedAnimation curve;

  @override
  initState(){
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    curve = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn Flutter'),
      ),
      body: Center(
        child: Container(
          child: Container(
              child: FadeTransition(
                  opacity: curve,
                  child: FlutterLogo(
                    size: 100.0,
                  ),
              ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          controller.forward();
        },
        tooltip: 'Fade',
        child: Icon(Icons.brush),
      ),
    );
  }
}
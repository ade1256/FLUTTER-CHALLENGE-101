import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App Learn Flutter'),
        ),
        body: Center(
          child: Text('Hello World, This is my Flutter Exploration World to complete 101 Challenge : One day one challenge',
          style: TextStyle(
            fontSize: 24.0,
          ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ExplanationScreen(),
    );
  }
}

class ExplanationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tipos de personalidades'),
      ),
      body: Center(
        child: ExplanationWidget(),
      ),
    );
  }
}

class ExplanationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Text(
        'sobre as personalidades.',
        style: TextStyle(fontSize: 18.0),
        textAlign: TextAlign.center,
      ),
    );
  }
}

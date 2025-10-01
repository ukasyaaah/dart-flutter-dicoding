import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello World',
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.lightGreen,
          title: Text('Hello WOrld'),
          leading: Icon(Icons.menu),
        ),
        body: Center(child: Text('Hello World')),
      ),
    );
  }
}

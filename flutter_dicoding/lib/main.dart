import 'package:flutter/material.dart';
import 'package:flutter_dicoding/screens/widget.dart';
import 'package:flutter_dicoding/screens/first_screen.dart';
import 'package:flutter_dicoding/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.lightGreen),
      initialRoute: '/',
      title: 'Flutter Dicoding',
      routes: {
        '/': (context) => Home(),
        '/first': (context) => FirstScreen(),
        '/widget': (context) => WidgetScreen(),
      },
    );
  }
}

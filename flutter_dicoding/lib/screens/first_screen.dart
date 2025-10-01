import 'package:flutter/material.dart';
import 'package:flutter_dicoding/widgets/bigger_text.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        title: Text('Hello World'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        // leading: Icon(Icons.menu, color: Colors.white),
        actions: [Icon(Icons.search), SizedBox(width: 10), Icon(Icons.people)],
        actionsPadding: EdgeInsets.symmetric(horizontal: 22),
        actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
      ),
      body: Center(child: BiggerText(text: 'White')),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightGreen,
        hoverColor: Colors.green,
        onPressed: () {},
        shape: CircleBorder(),
        child: Icon(
          Icons.add,

          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_dicoding/widgets/tebu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
        title: Text('Home Page'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        leading: Icon(Icons.menu, color: Colors.white),
        actions: [Icon(Icons.search), SizedBox(width: 10), Icon(Icons.people)],
        actionsPadding: EdgeInsets.symmetric(horizontal: 22),
        actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TeBu(
              text: 'First Screen',
              color: Colors.lightGreen,
              route: '/first',
            ),
            SizedBox(height: 10),
            TeBu(
              text: 'Widget Screen',
              color: Colors.lightBlueAccent,
              route: '/widget',
            ),
            SizedBox(height: 10),
            TeBu(text: 'Media Query', color: Colors.teal, route: '/mq'),
            SizedBox(height: 10),
            TeBu(text: 'Navigation', color: Colors.yellowAccent, route: '/nav'),
          ],
        ),
      ),
    );
  }
}

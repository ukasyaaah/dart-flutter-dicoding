import 'package:flutter/material.dart';

class WidgetScreen extends StatelessWidget {
  const WidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Widget Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.deepPurpleAccent, width: 3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(3, 6),
                    blurRadius: 5,
                  ),
                ],
                color: Colors.lightBlueAccent,
              ),
              margin: EdgeInsets.all(19),
              padding: EdgeInsets.all(40),
              child: Text('Hi', style: TextStyle(fontSize: 20)),
            ),

            Padding(
              padding: EdgeInsetsGeometry.all(12),
              child: Text('Ini pake padding'),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                Icon(Icons.share, color: Colors.deepOrangeAccent, size: 30),
                Icon(
                  Icons.logo_dev_rounded,
                  color: Colors.deepOrangeAccent,
                  size: 30,
                ),
                Icon(Icons.share, color: Colors.deepOrangeAccent, size: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

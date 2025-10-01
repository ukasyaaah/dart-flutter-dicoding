import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String message;
  const SecondScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Balik'),
            ),
          ],
        ),
      ),
    );
  }
}

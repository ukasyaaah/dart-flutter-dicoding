import 'package:flutter/material.dart';
import 'package:flutter_dicoding/screens/navigation/second.dart';

class FirstNavScreen extends StatelessWidget {
  final String message = 'From First Page';

  const FirstNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text('Ke Halaman 2 dgn pesan'),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        SecondScreen(message: message),
                  ),
                );
              },
              child: Text('Ke halaman 2 dengan kirim message'),
            ),
          ],
        ),
      ),
    );
  }
}

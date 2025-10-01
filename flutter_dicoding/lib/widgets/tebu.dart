import 'package:flutter/material.dart';

class TeBu extends StatelessWidget {
  final String text;
  final String route;
  final Color color;
  const TeBu({
    super.key,
    required this.text,
    required this.route,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: color,
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(12),
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, route);
            },
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 19,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class BigTitleText extends StatelessWidget {
  final String text;
  const BigTitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 48,
        fontWeight: FontWeight(800),
        color: Colors.black,
        height: 1,
      ),
    );
  }
}

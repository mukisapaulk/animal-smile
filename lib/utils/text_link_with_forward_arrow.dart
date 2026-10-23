import 'package:flutter/material.dart';

class TextLinkWithForwardArrow extends StatelessWidget {
  final String screenName;
  const TextLinkWithForwardArrow({super.key, required this.screenName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [Text(screenName), Icon(Icons.arrow_right_alt_rounded)],
    );
  }
}

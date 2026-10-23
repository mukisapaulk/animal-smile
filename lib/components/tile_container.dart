import 'package:flutter/material.dart';

class TileContainer extends StatelessWidget {
  final String tilename;
  const TileContainer({super.key, required this.tilename});

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(color: Colors.black),
      padding: const EdgeInsets.only(right: 12, top: 12, bottom: 12),
      child: Text(tilename),
    );
  }
}

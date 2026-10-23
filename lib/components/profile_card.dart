import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String imageURL;
  final String name;
  const ProfileCard({super.key, required this.imageURL, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 12),
      child: Column(
        children: [
          CircleAvatar(radius: 32, backgroundImage: AssetImage(imageURL)),
          Text(name),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfileOverviewCard extends StatelessWidget {
  final String role;
  final String name;
  final String userIMG;
  const ProfileOverviewCard({
    super.key,
    required this.role,
    required this.name,
    required this.userIMG,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(children: [Text(role), Text(name)]),
        CircleAvatar(radius: 24, backgroundImage: AssetImage(userIMG)),
      ],
    );
  }
}

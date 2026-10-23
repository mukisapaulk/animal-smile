import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String body;
  final String date;
  const NotificationCard({
    super.key,
    required this.body,
    required this.date,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: BoxBorder.all(color: Colors.black, width: 1),
      ),
      child: Row(
        children: [
          Expanded(child: Icon(icon)),
          Expanded(child: Text(title)),
          Expanded(child: Text(body)),
          Expanded(child: Text(date)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ServiceContainer extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  ServiceContainer({
    super.key,
    required this.icon,
    required this.subtitle,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blue.shade100,
      ),
      child: Column(children: [Icon(icon), Text(title), Text(subtitle)]),
    );
  }
}

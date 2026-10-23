import 'package:flutter/material.dart';

class RecentVisitsContainer extends StatelessWidget {
  final String service;
  final String serviceProvider;
  final String date;
  const RecentVisitsContainer({
    super.key,
    required this.date,
    required this.service,
    required this.serviceProvider,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.blue.shade200,
      ),
      child: Row(
        children: [
          //colomn
          Column(children: [Text(service), Text(serviceProvider)]),
          Row(children: [Icon(Icons.lock_clock_rounded), Text(date)]),
        ],
      ),
    );
  }
}

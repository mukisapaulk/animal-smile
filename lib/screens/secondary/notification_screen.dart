import 'package:animal_smile/components/notification/notification_card.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<dynamic> notifications = [
    ['errors happen', '23 04 2016', Icons.dangerous, 'this is a test'],
    ['errors happen', '23 04 2016', Icons.dangerous, 'this is a test'],
    ['errors happen', '23 04 2016', Icons.dangerous, 'this is a test'],
    ['errors happen', '23 04 2016', Icons.dangerous, 'this is a test'],
    ['errors happen', '23 04 2016', Icons.dangerous, 'this is a test'],
    ['errors happen', '23 04 2016', Icons.dangerous, 'this is a test'],
    ['errors happen', '23 04 2016', Icons.dangerous, 'this is a test'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text('Notification'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) => NotificationCard(
            body: notifications[index][0],
            date: notifications[index][1],
            icon: notifications[index][2],
            title: notifications[index][3],
          ),
        ),
      ),
    );
  }
}

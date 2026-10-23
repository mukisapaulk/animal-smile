import 'package:animal_smile/components/recent_visits_container.dart';
import 'package:flutter/material.dart';

class RecentVisitsOnHome extends StatefulWidget {
  const RecentVisitsOnHome({super.key});

  @override
  State<RecentVisitsOnHome> createState() => _RecentVisitsOnHomeState();
}

class _RecentVisitsOnHomeState extends State<RecentVisitsOnHome> {
  // list of recent activities
  final List _recents = [
    ['12-10-2026', 'veterinary', 'dr.william'],
    ['12-10-2026', 'veterinary', 'dr.peter'],
    ['12-10-2026', 'vaccination', 'dr.martin'],
    ['12-10-2026', 'artificial insemination', 'dr.vivian'],
  ];
  //get the current index

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: _recents.length,
      itemBuilder: (context, index) => RecentVisitsContainer(
        date: _recents[index][0],
        service: _recents[index][1],
        serviceProvider: _recents[index][2],
      ),
    );
  }
}

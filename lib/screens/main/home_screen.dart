import 'package:animal_smile/components/hero_container.dart';
import 'package:animal_smile/components/request_service_floating_button.dart';
import 'package:animal_smile/components/service_container.dart';
import 'package:animal_smile/partials/recent_visits_on_home.dart';
import 'package:animal_smile/screens/secondary/notification_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //list of the
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        forceMaterialTransparency: true,
        automaticallyImplyLeading: false,
        title: Text('test home', maxLines: 2),
        automaticallyImplyActions: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.wallet)),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NotificationScreen()),
              );
            },
            icon: Icon(Icons.notifications),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: ListView(
          children: [
            HeroContainer(
              buttontext: 'Discover',
              onPressed: () {},
              subtitle:
                  'Improve livestock productivity with expert artificial insemination at your fingertips.',
              title: 'Better Breeding Healthier Herds',
              heroimg: 'lib/images/imgCow.jpg',
            ),
            //services
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('services'),
                GestureDetector(onTap: () {}, child: Text('see all')),
              ],
            ),
            Row(
              spacing: 8,
              children: [
                Expanded(
                  flex: 1,
                  child: ServiceContainer(
                    icon: Icons.heat_pump_sharp,
                    subtitle: 'services',
                    title: 'Veterinary',
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ServiceContainer(
                    icon: Icons.dns_sharp,
                    subtitle: 'insemination',
                    title: 'Artificial',
                  ),
                ),
              ],
            ),
            //up coming schedule
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Upcoming schedule'),
                GestureDetector(onTap: () {}, child: Text('see all')),
              ],
            ),

            //recent visits
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Recent visits'),
                GestureDetector(onTap: () {}, child: Text('see all')),
              ],
            ),
            RecentVisitsOnHome(),
            RequestServiceFloatingButton(),
          ],
        ),
      ),
    );
  }
}

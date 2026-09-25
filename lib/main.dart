import 'package:animal_smile/screens/main/home_screen.dart';
import 'package:animal_smile/screens/main/market_place_screen.dart';
import 'package:animal_smile/screens/main/profile_screen.dart';
import 'package:animal_smile/screens/main/services_screen.dart';
import 'package:animal_smile/screens/welcoming/welcome_one.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeOne(),
      routes: {
        '/homeScreen': (context) => HomeScreen(),
        '/marketScreen': (context) => MarketPlaceScreen(),
        '/profileScreen': (context) => ProfileScreen(),
        '/servicesScreen': (context) => ServicesScreen(),
      },
    );
  }
}

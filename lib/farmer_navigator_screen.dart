import 'package:animal_smile/screens/main/appointments_screen.dart';
import 'package:animal_smile/screens/main/home_screen.dart';
import 'package:animal_smile/screens/main/market_place_screen.dart';
import 'package:animal_smile/screens/main/profile_screen.dart';
import 'package:animal_smile/screens/main/services_screen.dart';
import 'package:flutter/material.dart';

class FarmerNavigatorScreen extends StatefulWidget {
  const FarmerNavigatorScreen({super.key});

  @override
  State<FarmerNavigatorScreen> createState() => _FarmerNavigatorScreen();
}

class _FarmerNavigatorScreen extends State<FarmerNavigatorScreen> {
  // list of screens
  final List _screens = [
    HomeScreen(),
    AppointmentsScreen(),
    MarketPlaceScreen(),
    ServicesScreen(),
    ProfileScreen(),
  ];
  // get the sellected screen
  int _selectedScreen = 0;
  void _navigationButtonBar(int index) {
    setState(() {
      _selectedScreen = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedScreen],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        currentIndex: _selectedScreen,
        onTap: _navigationButtonBar,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one, color: Colors.black),
            label: 'appointment',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mark_chat_read, color: Colors.black),
            label: 'market',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.room_service, color: Colors.black),
            label: 'services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2, color: Colors.black),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}

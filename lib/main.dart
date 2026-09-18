// import 'package:animal_smile/screens/welcome_one.dart';
import 'package:animal_smile/screens/welcome_two.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: WelcomeTwo());
  }
}

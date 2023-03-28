import 'package:flutter/material.dart';
import 'package:my_app/pages/breakfastapp.dart';
import 'package:my_app/pages/homepage.dart';
import 'package:my_app/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'poppins'),
      routes: {
        "/": (context) => const Homepage(),
        "/login": (context) => const Loginpage(),
        "/breakfastapp": (context) => const breakfastapp()
      },
    );
  }
}

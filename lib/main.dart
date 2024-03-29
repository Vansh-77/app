import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/pages/breakfastapp.dart';
import 'package:my_app/pages/catelogapp.dart';
import 'package:my_app/pages/homepage.dart';
import 'package:my_app/pages/login.dart';
//import 'package:my_app/pages/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'poppins',
      ),
      routes: {
        "/": (context) => const CatelogApp(),
        "/loginpage": (context) => const Loginpage(),
        "/breakfastapp": (context) => const breakfastapp(),
        "/catelogapp": (context) => const CatelogApp(),
        "/homepage": (context) => const Homepage()
      },
    );
  }
}

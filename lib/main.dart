import 'package:bachatt/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bachatt',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Be Vietnam Pro',
      ),
      home: const SplashScreen(),
    );
  }
}

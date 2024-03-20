import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:arindamaui/screens/home_screen.dart';
import 'package:arindamaui/screens/login_screen.dart';
import 'package:arindamaui/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Your App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
      },
      theme: ThemeData(
        // Define the custom font family
        fontFamily: 'Mulish',
        // Define the text theme with the custom font family
        textTheme: TextTheme(
          bodyText1: TextStyle(fontFamily: 'Mulish', fontFeatures: [FontFeature.enable('wght')], fontSize: 16.0),
          bodyText2: TextStyle(fontFamily: 'Mulish', fontFeatures: [FontFeature.enable('wght')], fontSize: 16.0),
          button: TextStyle(fontFamily: 'Mulish', fontSize: 16.0, color: Color(0xFFBB0022)),
          // You can define more text styles here if needed
        ),
      ),
    );
  }
}

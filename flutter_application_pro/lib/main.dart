// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_pro/pages/first_page.dart';
import 'package:flutter_application_pro/pages/home_page.dart';
import 'package:flutter_application_pro/pages/second_page.dart';
import 'package:flutter_application_pro/pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  void userTapped() {
    print("User tapped");
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
      routes: {
        '/firstpage':(context) => FirstPage(),
        '/secondpage':(context) => SecondPage(),
        '/homepage':(context) => HomePage(),
        '/settingspage':(context) => SettingsPage(),
      },
      );
  }
}


import 'package:eximpapa/Main_screen/splashPage.dart';
import 'package:flutter/material.dart';
import 'dart:developer'as dev;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MySplashPage() ,
      debugShowCheckedModeBanner: false,
    );
  }
}



import 'dart:async';
import 'package:eximpapa/Main_screen/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MySplashPage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<MySplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
   /*child: Image.asset(
        'assets/black_exim.png',
        // fit: BoxFit.contain,
      ),*/
   padding: EdgeInsets.only(left: 70,right: 70),
   child:  Image.asset(
     'assets/new_exim.png',
    //fit: BoxFit.contain,
     width: 10,

   ),
    );
  }
}
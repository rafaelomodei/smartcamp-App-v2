import 'dart:async';

import 'package:flutter/material.dart';
import 'package:smartcamp/screens/private/home/home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String img = 'assets/img/png/logo.png';

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Image.asset(img),
    ));
  }
}

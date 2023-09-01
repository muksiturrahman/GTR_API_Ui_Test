import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gtr_test/Screens/OnboardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 3), () async {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (c) =>  OnBoarding()));
    });
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Image.asset("assets/images/splashscreen.png",fit: BoxFit.fill,),
    );
  }
}
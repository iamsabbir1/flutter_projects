import 'package:flutter/material.dart';
import 'dart:async';
import 'package:bma/activity/main_activity.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, navigationpage);
  }

  void navigationpage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Activity(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/blood.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'BRING A LIFE BACK TO POWER',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const Text('Make blood donation your resposibility'),
          ],
        ),
      ),
    );
  }
}
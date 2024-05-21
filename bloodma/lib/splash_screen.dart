import 'package:flutter/material.dart';
import 'dart:async';
import 'package:bloodma/UI/home.dart';

class SplashScreen extends StatefulWidget {

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState()
  {
    return _SplashScreenState();
  }
}

class _SplashScreenState extends State<SplashScreen>
{

  startTime () async {
    var duration = const Duration(seconds: 2);
    return Timer(duration,navigationpage);
  }

  @override
  void initState()
  {
    super.initState();
    startTime();
  }

  void navigationpage()
  {
    Navigator.pushReplacement(
      context,MaterialPageRoute(builder: (_) => const Home())
    );
  }


  @override
  Widget build(BuildContext context)
  {
    return const Scaffold(
      body: Center(
        child:  Text("Blood Management App Splash Screen"),
      )
    );
  }
}
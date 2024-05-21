import 'dart:async';
import 'package:flutter/material.dart';
import 'package:bloodma/UI/Widget/customtextfield.dart';



void main()
{
  runApp(
    const MyApp()
    );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: "Blood Management App",
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color.fromARGB(255, 224, 5, 5)),
        

      ),
      home: const SplashScreen(),   
    );
  }
}

class SplashScreen extends StatefulWidget {
  
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState()
  {
    return _SplashScreen();
  }
}

class _SplashScreen extends State<SplashScreen>
{

  @override
  void initState()
  {
    super.initState();
    startTime();
  }

  startTime () async {
    var duration = const Duration(seconds: 2);
    return Timer(duration,navigationpage);
  }

  void navigationpage()
  {
    Navigator.pushReplacement(
      context,MaterialPageRoute(builder: (_) => const CustomTextField())
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


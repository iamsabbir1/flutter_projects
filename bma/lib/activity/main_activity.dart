import 'package:bma/dashboard/dashboard.dart';
import 'package:bma/dashboard/no_user.dart';
import 'package:bma/models/login.dart';
import 'package:bma/models/signup.dart';
import 'package:flutter/material.dart';
import 'package:bma/models/home.dart';

class Activity extends StatefulWidget {
  const Activity({super.key});

  @override
  State<Activity> createState() {
    return _ActivityState();
  }
}

class _ActivityState extends State<Activity> {
  Widget? activeWidget;

  void switchScreen() {
    setState((){
      activeWidget = const SignUp();
    });
    
  }

  void login()
  {
    setState(() {
      activeWidget = Login(signup: switchScreen,dashboard: dashBoard);
    });
  }

  void dashBoard()
  {
    setState(() {
      activeWidget = const Dashboard();
    });
  }

  void noUserdashBoard()
  {
    setState((){
      activeWidget = const NoUser();
    });
  }

  @override
  void initState() {
    super.initState();
    activeWidget = Home(
      singUp: switchScreen,
      dashboard: noUserdashBoard,
      login: login,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: activeWidget,
      ),
    );
  }
}
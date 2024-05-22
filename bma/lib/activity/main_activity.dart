import 'package:bma/dashboard/dashboard.dart';
import 'package:bma/no_user_dashboard/no_user.dart';
import 'package:bma/models/signin.dart';
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
      activeWidget = SignUp(backhome: home,);
    });
    
  }

  void login()
  {
    setState(() {
      activeWidget = SignIn(signup: switchScreen,dashboard: dashBoard,backhome: home,);
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

  void home()
  {
    setState(() {
      activeWidget = Home(
        singUp: switchScreen,
        dashboard: noUserdashBoard,
        login: login,
      );
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
    return Container(
        child: activeWidget,
    );
  }
}

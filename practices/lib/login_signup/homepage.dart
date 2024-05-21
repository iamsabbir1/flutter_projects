import 'package:flutter/material.dart';
import 'package:practices/login_signup/models/login.dart';
import 'package:practices/login_signup/models/signup.dart';
import 'package:practices/login_signup/models/welcome_page.dart';

class LoginSignUp extends StatefulWidget
{
  const LoginSignUp({super.key});

  @override
  State<LoginSignUp> createState()
  {
    return _LoginSignUpState();
  }
}


class _LoginSignUpState extends State<LoginSignUp> {


  Widget? activeScreen;

  void signup()
  {
    setState(() {
      activeScreen = const SignUp();
    });
  }

  @override
  void initState()
  {
    super.initState();
    activeScreen = Login(loginF: signup,
    welcome: welcomepage,);
  }

  void welcomepage()
  {
    setState(() {
      activeScreen = const WelcomePage();
    });
  }


  void login()
  {
    setState(() {
      activeScreen = Login(loginF: signup,welcome: welcomepage,);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: activeScreen,
    );
  }
}

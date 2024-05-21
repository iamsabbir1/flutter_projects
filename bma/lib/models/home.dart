import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.singUp, required this.dashboard,required this.login});

  final void Function() dashboard;
  final void Function() singUp;
  final void Function() login;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Welcome to home page',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                ElevatedButton(
                  onPressed: singUp,
                  child:const Text(
                    'SignUp',
                  ),
                ),

                ElevatedButton(
                  onPressed: login,
                  child:const Text(
                    'SignIn',
                  ),
                ),

                ElevatedButton(
                  onPressed: dashboard,
                  child:const Text(
                    'Skip',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

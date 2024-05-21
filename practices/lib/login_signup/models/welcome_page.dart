import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() {
    return _WelcomePageState();
  }
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome Back!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text('User name'),
          const Text('Email'),
          ElevatedButton(
            onPressed: () {},
            
            style: ButtonStyle(
            
              backgroundColor: MaterialStateProperty.all(Colors.red),
              padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 12,
                ),
              ),
            ),
            
            child: const Text('Logout',style: TextStyle(color: Colors.white),),
          ),
        ],
      ),
    );
  }
}

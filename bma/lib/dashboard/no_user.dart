import 'package:flutter/material.dart';

class NoUser extends StatefulWidget {
  const NoUser({super.key});

  @override
  State<NoUser> createState() {
    return _NoUserState();
  }
}

class _NoUserState extends State<NoUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('No User'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to No User',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
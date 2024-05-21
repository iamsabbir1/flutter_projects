import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.amberAccent, Colors.cyanAccent]),
              // Customize header color
              borderRadius: BorderRadius.all(Radius.elliptical(11, 11)),
            ),
            child: Text(
              'Blood Management App',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          // ... other drawer items
          DrawerHeader(
            decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.blueAccent, Colors.grey]),
              borderRadius: BorderRadius.all(Radius.circular(4)),
            ),
            child: Text('FAQ'),
          )
        ],
      ),
    );
  }
}

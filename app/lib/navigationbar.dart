import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.amber,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.accessibility),
          label: 'Accessibility',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box),
          label: 'Account',
        ),

      ],
    );
  }
}


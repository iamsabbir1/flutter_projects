import 'package:flutter/material.dart';

class CustomizedAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomizedAppBar({super.key});

  @override
  State<CustomizedAppBar> createState() {
    return _CustomizedAppBarState();
  }
  
  @override
  Size get preferredSize => throw UnimplementedError();
}

class _CustomizedAppBarState extends State<CustomizedAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        PopupMenuButton<String>(
          iconColor: Colors.black,
          onSelected: (String result) {
            // Handle the menu item tap
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'Logout',
              child: Text('Logout'),
            ),
          ],
        ),
      ],
      backgroundColor: Colors.red.shade900,
      title: const Text(
        'No User Dashboard',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
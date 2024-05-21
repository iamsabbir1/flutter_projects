import 'package:flutter/material.dart';

class CustomizedDrawer extends StatefulWidget
{
  const CustomizedDrawer({super.key});

  @override
  State<CustomizedDrawer> createState() 
  {
    return _CustomizedDrawerState();
  }
}

class _CustomizedDrawerState extends State<CustomizedDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Text('Dashboard'),
              ),
              ListTile(
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
  }

}
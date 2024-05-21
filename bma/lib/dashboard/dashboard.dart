import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() 
  {
    return _DashboardState();
  }
  
}

class _DashboardState extends State<Dashboard> {
  


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.person),
            ),

            PopupMenuButton(
              onSelected: (value) {
                if (value == 0) {
                  print('Settings');
                } else {
                  print('Logout');
                }
              },
              itemBuilder: (BuildContext context) => [
                const PopupMenuItem(
                  value: 0,
                  child: Text('Settings'),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text('Logout'),
                ),
              ],
            ),
          ],
          backgroundColor: Colors.red.shade400,
          title: const Text('Dashboard'),
          
        ),

        drawer: Drawer(
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
        ),
        body: const SafeArea(
          child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(
                'Welcome to Dashboard',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



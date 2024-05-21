import 'package:bma/dashboard/drawer.dart';
import 'package:flutter/material.dart';
import 'package:bma/dashboard/app_bar.dart';

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

    return const Scaffold(
        appBar: PreferredSize(
          preferredSize:  Size.fromHeight(60),
          child: CustomizedAppBar(),
        ),

        drawer: CustomizedDrawer(),
        body: SafeArea(
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



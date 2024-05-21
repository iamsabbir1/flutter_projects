import 'package:app/gradient_container.dart';
import 'package:app/mydrawer.dart';
import 'package:app/navigationbar.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
      home: Scaffold(
        bottomNavigationBar: const MyBottomNavBar(),
        body: const GradientContainer([Color.fromARGB(255, 39, 40, 42),Colors.amberAccent]),
        drawer: const MyDrawer(),
        appBar: AppBar(backgroundColor: Colors.blue,),
        bottomSheet: const BackButton(color: Colors.amber,),
        backgroundColor: Colors.amber,
        
      ),
      title: 'hello',
    )
  );
}
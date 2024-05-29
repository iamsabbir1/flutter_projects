import 'package:bma/custom_paint.dart';
import 'package:bma/models/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:bma/firebase_options.dart';


Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(
   const MyApp(),
  );
}


class MyApp extends StatelessWidget
{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context)
  {
    return const MaterialApp(
      home: CustomPaintWidget(),
    );
  }
}

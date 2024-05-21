import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practices/login_signup/homepage.dart';
import 'package:firebase_core/firebase_core.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();


  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyDkW9yPG01oNl8SepinNn191-Nhc4CSq34",
        authDomain: "practice-flutter-firebas-d8616.firebaseapp.com",
        projectId: "practice-flutter-firebas-d8616",
        storageBucket: "practice-flutter-firebas-d8616.appspot.com",
        messagingSenderId: "365719601513",
        appId: "1:365719601513:web:374df4281451988863bdf8",
        measurementId: "G-7F7W598GFW",
      ),
    );
  }
  else
  {
    await Firebase.initializeApp();
  }

  runApp(
    const MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const LoginSignUp();
  }
}

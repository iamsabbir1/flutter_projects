import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Upwork Clone',
          style: TextStyle(
            fontFamily: GoogleFonts.newsreader().fontFamily,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 50), // Adjust the height to move the content upwards
          Container(
            alignment: Alignment.center,
            height: 200,
            width: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}

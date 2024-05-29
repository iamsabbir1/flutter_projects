import 'package:bma/upper_paint.dart';
import 'package:flutter/material.dart';


class CustomPaintWidget extends StatelessWidget {
  const CustomPaintWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: MyPainterUpper(),
        child: const Center(
          child: Text(
            'Hello, World!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ),
    );
  }
}
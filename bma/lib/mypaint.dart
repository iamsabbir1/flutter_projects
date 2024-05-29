import 'package:flutter/material.dart';

class MyPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size)
  {
    final paint = Paint();
    paint.color = Colors.blue;
    paint.strokeWidth = 5;
    paint.style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(0, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.25, size.width * 0.5, size.height * 0.5);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.75, size.width, size.height * 0.5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate)
  {
    return false;
  }
}
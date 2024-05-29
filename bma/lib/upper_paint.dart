import 'package:flutter/material.dart';


class MyPainterUpper extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 5
      ..style = PaintingStyle.fill;

    var path = Path();
    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width / 2, size.height / 2, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
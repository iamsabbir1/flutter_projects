import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = const Color.fromARGB(255, 243, 33, 51)
      ..strokeWidth = 5
      ..style = PaintingStyle.fill;


    var path = Path();
    path.moveTo(0, 0); //left top corner
    path.lineTo(size.width, 0); //right top corner
    path.quadraticBezierTo(size.width, 0,
        size.width , size.height * 0.5); //left bottom corner

//    path.lineTo(size.width*0.5, size.height); 

    path.quadraticBezierTo(size.width*0.4,0,0, size.height*.25); //left bottom corner x1,y1,x2,y2
    path.close();
    canvas.drawPath(path, paint);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
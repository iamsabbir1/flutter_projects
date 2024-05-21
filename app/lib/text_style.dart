import 'package:flutter/material.dart';

var weight1 = 50.0;
var s ="ghgf";
class TextStyleWidgets extends StatelessWidget
{
  const TextStyleWidgets(this.text,{super.key});
  
  final String text;

  @override 
  Widget build(BuildContext context)
  {
    return Text(
              text,
              style:const TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            );
  }
}
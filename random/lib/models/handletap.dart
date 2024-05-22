import 'package:flutter/material.dart';


class HandleTap extends StatelessWidget
{
  const HandleTap({super.key});

  @override
  Widget build(BuildContext context)
  {
    return GestureDetector(
      child:Container(
        padding: const EdgeInsets.all(12),
        child:const Text('Tap It!'),
      ),
    );
  }
}
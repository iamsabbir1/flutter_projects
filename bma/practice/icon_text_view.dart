import 'package:flutter/material.dart';
class IconTextRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconTextRow({required this.icon, required this.text,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 30,
        ),
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
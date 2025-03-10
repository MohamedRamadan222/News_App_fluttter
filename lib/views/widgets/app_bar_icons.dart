import 'package:flutter/material.dart';

class AppBarIcons extends StatelessWidget {
  final IconData icon;

  const AppBarIcons({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,

      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.withOpacity(0.15),
      ),

      child: Icon(icon),
    );
  }
}

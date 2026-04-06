import 'package:flutter/material.dart';

class ForcastItemCard extends StatelessWidget {
  final String day;
  final String temp;
  final IconData icon;
  const ForcastItemCard({
    super.key,
    required this.day,
    required this.temp,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(day, style: const TextStyle(color: Colors.white)),
        const SizedBox(height: 6),
        Icon(icon, color: Colors.white),
        const SizedBox(height: 6),
        Text(
          temp,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

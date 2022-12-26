import 'package:flutter/material.dart';

class SmallBtn extends StatelessWidget {
  final String icon;

  const SmallBtn({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(width: 1.00, color: Colors.grey),
      ),
      child: Image.asset(icon, height: 30),
    );
  }
}

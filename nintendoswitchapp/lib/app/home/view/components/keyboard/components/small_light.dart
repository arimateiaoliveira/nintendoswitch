import 'package:flutter/material.dart';

class SmallLight extends StatelessWidget {
  final bool on;
  final double size;
  const SmallLight({
    Key? key,
    required this.size,
    this.on = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = on ? const Color(0xFFB6EBA5) : const Color(0xFF222327);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}

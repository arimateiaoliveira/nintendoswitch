import 'package:flutter/material.dart';

class LogoClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //para radius considerar width
    //total width
    final double width = size.width;
    //total height
    final double height = size.height;

    Path path = Path();

    path
      ..lineTo(width, 0)
      ..lineTo(width, height)
      ..lineTo(0, height)
      ..lineTo(0, 0)
      ..moveTo(width - (width * .33), 0)
      ..arcToPoint(Offset(width, width * .33), radius: Radius.circular(20));

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

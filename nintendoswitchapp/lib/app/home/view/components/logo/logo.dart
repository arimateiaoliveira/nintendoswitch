import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final Color color;
  final double size;
  const Logo({
    Key? key,
    this.color = const Color(0xFF000000),
    this.size = 100,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, cnst) {
      return ClipPath(
        clipper: LogoClipper(),
        child: Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(cnst.maxWidth * .25)),
            color: color,
          ),
        ),
      );
    });
  }
}

class LogoClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    //path resultado
    Path path = Path();

    //para radius considerar width
    //total width
    final double maxX = size.width;
    //total height
    final double maxY = size.height;
    //recorte interno
    final startInternal = Offset(maxX * .08, maxY * .08);
    final endInternal = Offset(maxX * .40, maxY * .92);
    final radiusInternal =
        Radius.circular((endInternal.dx - startInternal.dx) * .56);
    //circulos
    Rect circle(Offset center) {
      return Rect.fromCircle(center: center, radius: maxX * .19 / 2);
    }

    //container externo
    path
      ..lineTo(0, 0)
      ..lineTo(0, maxY)
      ..lineTo(maxX, maxY)
      ..lineTo(maxX, 0);

    //divider
    path.addRect(Rect.fromPoints(
      Offset(maxX * .48, 0),
      Offset(maxX * .58, maxY),
    ));

    //recorte interno
    path
      ..addRRect(RRect.fromRectAndCorners(
        Rect.fromPoints(startInternal, endInternal),
        topLeft: radiusInternal,
        bottomLeft: radiusInternal,
      ))
      ..moveTo(startInternal.dx * .56, startInternal.dy)
      ..arcToPoint(Offset(startInternal.dx, endInternal.dy * .56));

    //circulos
    path
      ..addOval(circle(Offset(maxX * .24, maxY * .3)))
      ..addOval(circle(Offset(maxX * .78, maxY * .56)));

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return oldClipper != this;
  }
}

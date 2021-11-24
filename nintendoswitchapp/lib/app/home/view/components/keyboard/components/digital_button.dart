import 'package:flutter/material.dart';

enum DigitalButtonType1 { up, left, x, y }
enum DigitalButtonType2 { right, down, a, b }

class DigitalButton extends StatelessWidget {
  final Alignment alignmentGradientBegin;
  final Alignment alignmentGradientEnd;
  DigitalButtonType1? buttonType1;
  DigitalButtonType2? buttonType2;

  DigitalButton.type1({
    Key? key,
    this.alignmentGradientBegin = Alignment.topCenter,
    this.alignmentGradientEnd = Alignment.bottomCenter,
    required this.buttonType1,
  }) : super(key: key);

  DigitalButton.type2({
    Key? key,
    this.alignmentGradientBegin = Alignment.topLeft,
    this.alignmentGradientEnd = Alignment.bottomRight,
    required this.buttonType2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          begin: alignmentGradientBegin,
          end: alignmentGradientEnd,
          colors: const [
            Color(0xFF7B8287),
            Color(0xFF050F11),
          ],
        ),
      ),
      child: LayoutBuilder(builder: (ctx, constraint) {
        return Center(
          child: Container(
            width: constraint.maxWidth * .8,
            height: constraint.maxWidth * .8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: alignmentGradientBegin,
                end: alignmentGradientEnd,
                colors: const [
                  Color(0xFF686D70),
                  Color(0xFF050F11),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

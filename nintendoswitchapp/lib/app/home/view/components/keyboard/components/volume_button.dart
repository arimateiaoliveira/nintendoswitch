import 'package:flutter/material.dart';

class VolumeButton extends StatelessWidget {
  final bool isPlus;
  const VolumeButton({
    Key? key,
    this.isPlus = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, cnst) {
      //tamanho proporsional
      final size = cnst.maxWidth;

      //child
      Widget child = Container(
        height: size * .33,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(1),
          gradient: const LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color(0xFF4A494E),
              Color(0xFF525157),
            ],
          ),
        ),
      );

      return Stack(
        alignment: Alignment.center,
        children: [
          child,
          isPlus ? RotatedBox(quarterTurns: 1, child: child) : Container(),
        ],
      );
    });
  }
}

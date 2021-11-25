import 'package:flutter/material.dart';

class SoundButton extends StatelessWidget {
  const SoundButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, cnst) {
      //tamanho proporcional
      final size = cnst.maxWidth * .81;

      return Container(
        width: size,
        height: size,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size * .08),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF7B8287),
              Color(0xFF324144),
            ],
          ),
        ),
        child: Container(
          width: size * .85,
          height: size * .85,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size * .08),
            gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xFF4A494E),
                Color(0xFF525157),
              ],
            ),
          ),
          child: Container(
            width: size * .62,
            height: size * .62,
            decoration: const BoxDecoration(
              color: Color(0xFF182022),
              shape: BoxShape.circle,
            ),
          ),
        ),
      );
    });
  }
}

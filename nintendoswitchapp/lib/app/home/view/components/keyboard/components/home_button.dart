import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  const HomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, cnst) {
      //tamanho proporcional
      final size = cnst.maxWidth;
      return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xFF8F8989),
          border: Border.all(color: const Color(0xFF732A23)),
          shape: BoxShape.circle,
        ),
        child: Container(
          width: size * .76,
          height: size * .76,
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            color: Color(0xFF33383C),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.home_sharp,
            size: size * .76 * .62,
          ),
        ),
      );
    });
  }
}

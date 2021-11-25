import 'package:flutter/material.dart';
import 'package:nintendoswitchapp/app/home/view/components/logo/logo.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraint) {
      //tamanho proporcional
      final width = constraint.maxWidth * .88;
      final height = constraint.maxHeight * .88;
      return Center(
        child: Container(
          alignment: Alignment.center,
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: const Color(0xFF000000),
            borderRadius: BorderRadius.all(
              Radius.circular(width * .08),
            ),
          ),
          child: const Logo(),
        ),
      );
    });
  }
}

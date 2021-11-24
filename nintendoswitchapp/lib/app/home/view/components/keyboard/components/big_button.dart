import 'package:flutter/material.dart';

class BigButton extends StatelessWidget {
  final double size;
  const BigButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(),
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF686D70),
            Color(0xFF050F11),
          ],
        ),
      ),
      child: LayoutBuilder(
        builder: (ctx, constraint) {
          return Center(
            child: Container(
              //size calcule - width 47 / width 58 -
              width: constraint.maxWidth * .81,
              height: constraint.maxWidth * .81,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xFF686D70),
                    Color(0xFF050F11),
                  ],
                ),
              ),
              child: LayoutBuilder(
                builder: (ctx, constraint) {
                  return Center(
                    child: Container(
                      //size calcule - width 43,5 / width 47 -
                      width: constraint.maxWidth * .93,
                      height: constraint.maxWidth * .93,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        shape: BoxShape.circle,
                        gradient: const LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Color(0xFF676A6F),
                            Color(0xFF242625),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraint) {
      return Center(
        child: Container(
          width: constraint.maxWidth * .88,
          height: constraint.maxHeight * .88,
          decoration: const BoxDecoration(
            color: Color(0xFF000000),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      );
    });
  }
}

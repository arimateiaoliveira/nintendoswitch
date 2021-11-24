import 'package:flutter/material.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/sideboard.dart';

class SideButtonPositioned extends StatelessWidget {
  final Position position;
  final BoxConstraints constraints;
  final double maxSize;
  final double centerHorizontal;
  final double centerVertical;
  final Widget? child;

  const SideButtonPositioned.sound({
    Key? key,
    required this.position,
    required this.constraints,
    this.maxSize = .15,
    this.centerHorizontal = .19,
    this.centerVertical = .93,
    this.child,
  }) : super(key: key);

  const SideButtonPositioned.actionUP({
    Key? key,
    required this.position,
    required this.constraints,
    this.maxSize = .68,
    this.centerHorizontal = .53,
    this.centerVertical = .71,
    this.child,
  }) : super(key: key);

  const SideButtonPositioned.actionDown({
    Key? key,
    required this.position,
    required this.constraints,
    this.maxSize = .68,
    this.centerHorizontal = .53,
    this.centerVertical = .37,
    this.child,
  }) : super(key: key);

  const SideButtonPositioned.aux({
    Key? key,
    required this.position,
    required this.constraints,
    this.maxSize = .24,
    this.centerHorizontal = .23,
    this.centerVertical = .1,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxH = constraints.maxHeight;
    double maxW = constraints.maxWidth;
    return Positioned(
      left: position == Position.left
          ? maxW * centerHorizontal - (maxW * maxSize / 2)
          : null,
      right: position == Position.left
          ? null
          : maxW * centerHorizontal - (maxW * maxSize / 2),
      bottom: maxH * centerVertical - (maxW * maxSize / 2),
      child: SizedBox(
        height: maxW * maxSize,
        width: maxW * maxSize,
        child: Center(
          child: child,
        ),
      ),
    );
  }
}

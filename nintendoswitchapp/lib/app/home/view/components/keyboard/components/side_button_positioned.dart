import 'package:flutter/material.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/sideboard.dart';

class SideButtonPositioned extends StatelessWidget {
  const SideButtonPositioned.sound({
    Key? key,
    required this.position,
    required this.constraints,
    this.maxSize = .15,
    this.horizontal = .19,
    this.bottom = .89,
    this.child,
  }) : super(key: key);

  const SideButtonPositioned.actionUP({
    Key? key,
    required this.position,
    required this.constraints,
    this.maxSize = .68,
    this.horizontal = .53,
    this.bottom = .55,
    this.child,
  }) : super(key: key);

  const SideButtonPositioned.actionDown({
    Key? key,
    required this.position,
    required this.constraints,
    this.maxSize = .68,
    this.horizontal = .53,
    this.bottom = .21,
    this.child,
  }) : super(key: key);

  const SideButtonPositioned.aux({
    Key? key,
    required this.position,
    required this.constraints,
    this.maxSize = .24,
    this.horizontal = .23,
    this.bottom = .04,
    this.child,
  }) : super(key: key);

  //posicao herdada
  final Position position;
  //dimensoes herdadas
  final BoxConstraints constraints;
  //area proporcional
  final double maxSize;
  //centro de alinhamento horizontal
  final double horizontal;
  //centro de alinhamento vertical
  final double bottom;
  //filhos a serem posicionados
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    //dimensoes herdadas
    final double maxH = constraints.maxHeight;
    final double maxW = constraints.maxWidth;

    //posicoes
    double? left;
    double? right;

    //constante de alinhamento
    final constAlignH = maxW * horizontal - (maxW * maxSize / 2);
    final constAlignV = maxH * bottom;

    //posicionamento horizontal de acordo com o lado
    if (position == Position.left) {
      left = constAlignH;
    } else {
      right = constAlignH;
    }

    return Positioned(
      left: left,
      right: right,
      bottom: constAlignV,
      child: Container(
        alignment: Alignment.center,
        height: maxW * maxSize,
        width: maxW * maxSize,
        child: child,
      ),
    );
  }
}

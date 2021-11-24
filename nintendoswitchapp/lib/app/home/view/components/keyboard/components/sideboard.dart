import 'package:flutter/material.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/side_button_positioned.dart';

enum Position { left, right }

class SideBoard extends StatelessWidget {
  final Color color;
  final Position position;
  final Widget? soundButton;
  final Widget? actionUPButton;
  final Widget? actionDownButton;
  final Widget? auxButton;
  const SideBoard({
    Key? key,
    this.color = const Color(0xFF00BDDD),
    this.position = Position.left,
    this.soundButton,
    this.actionUPButton,
    this.actionDownButton,
    this.auxButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraint) {
      return Container(
        width: constraint.maxWidth,
        height: constraint.maxHeight,
        decoration: BoxDecoration(
          color: color,
          //no edge reference
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(position == Position.left ? 0 : 70),
            topRight: Radius.circular(position == Position.left ? 70 : 0),
          ),
        ),
        child: Stack(
          children: [
            SideButtonPositioned.sound(
              position: position,
              constraints: constraint,
              child: soundButton,
            ),
            //action/action
            SideButtonPositioned.actionUP(
              position: position,
              constraints: constraint,
              child: actionUPButton,
            ),
            //anologic/action
            SideButtonPositioned.actionDown(
              position: position,
              constraints: constraint,
              child: actionDownButton,
            ),
            //auxiliar
            SideButtonPositioned.aux(
              position: position,
              constraints: constraint,
              child: auxButton,
            ),
          ],
        ),
      );
    });
  }
}

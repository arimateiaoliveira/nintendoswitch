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
    required this.color,
    required this.position,
    this.soundButton,
    this.actionUPButton,
    this.actionDownButton,
    this.auxButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO: implement MediaQ.
    //dimensoes da tela
    final size = MediaQuery.of(context).size;

    return SizedBox(
      child: LayoutBuilder(
        builder: (ctx, constraint) {
          //calculo da largura proporcional
          double widthProportional = (constraint.maxHeight * .48);
          //radius for position
          double radiusLeft = position == Position.left ? 0 : 70;
          double radiusRight = position == Position.left ? 70 : 0;
          //calculo para controle de overflow
          //ajusta a largura do side quanto a tela fica mais estreita que o normal
          if ((widthProportional / size.width) > .33) {
            widthProportional = size.width * .33;
          }

          return Container(
            width: widthProportional,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radiusLeft),
                topRight: Radius.circular(radiusRight),
              ),
            ),
            child: LayoutBuilder(builder: (ctx, cnst) {
              return Stack(
                children: [
                  SideButtonPositioned.sound(
                    position: position,
                    constraints: cnst,
                    child: soundButton,
                  ),
                  //action/action
                  SideButtonPositioned.actionUP(
                    position: position,
                    constraints: cnst,
                    child: actionUPButton,
                  ),
                  //anologic/action
                  SideButtonPositioned.actionDown(
                    position: position,
                    constraints: cnst,
                    child: actionDownButton,
                  ),
                  //auxiliar
                  SideButtonPositioned.aux(
                    position: position,
                    constraints: cnst,
                    child: auxButton,
                  ),
                ],
              );
            }),
          );
        },
      ),
    );
  }
}

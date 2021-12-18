import 'package:flutter/material.dart';

enum DigitalModel { direction, action }
enum DigitalPosition { up, down, left, right }

class DigitalButton extends StatelessWidget {
  const DigitalButton({
    required this.model,
    required this.position,
    Key? key,
  }) : super(key: key);
  //o modelo indicara se o botao sera de posicao ou acao
  final DigitalModel model;
  //o position indicara a posicao do botao com base na organizacao
  final DigitalPosition position;

  @override
  Widget build(BuildContext context) {
    //alinhamento do botao
    final Alignment alignment;
    //alinhamento que receberao alteracao de gradientes
    final LinearGradient linear;

    //definicoes de gradiente
    if (position == DigitalPosition.up || position == DigitalPosition.left) {
      linear = const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF7B8287), Color(0xFF050F11)]);
    } else {
      linear = const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF7B8287), Color(0xFF050F11)]);
    }

    Widget? getChild(double size) {
      //definicoes para mddelo de botao do tipo acao
      if (model == DigitalModel.action) {
        String? text;
        if (position == DigitalPosition.up) text = 'X';
        if (position == DigitalPosition.down) text = 'B';
        if (position == DigitalPosition.left) text = 'Y';
        if (position == DigitalPosition.right) text = 'A';
        return Text(text!, style: TextStyle(color: Colors.white, fontSize: size / 1.5));
      }

      //definicoes para modelo de botao do tipo direcao
      else if (model == DigitalModel.direction) {
        IconData? icon;
        if (position == DigitalPosition.up) icon = Icons.arrow_drop_up;
        if (position == DigitalPosition.down) icon = Icons.arrow_drop_down;
        if (position == DigitalPosition.left) icon = Icons.arrow_left;
        if (position == DigitalPosition.right) icon = Icons.arrow_right;
        return Icon(icon!, size: size);
      }
    }

    //definicoes de alinhamento
    if (position == DigitalPosition.up) {
      alignment = Alignment.topCenter;
    } else if (position == DigitalPosition.down) {
      alignment = Alignment.bottomCenter;
    } else if (position == DigitalPosition.left) {
      alignment = Alignment.centerLeft;
    } else {
      alignment = Alignment.centerRight;
    }

    return Align(
      alignment: alignment,
      child: LayoutBuilder(
        builder: (ctx, cnst) {
          return Container(
            alignment: Alignment.center,
            width: cnst.maxWidth * .33,
            height: cnst.maxWidth * .33,
            decoration: BoxDecoration(shape: BoxShape.circle, gradient: linear),
            child: LayoutBuilder(
              builder: (ctx, constraint) {
                //tamanho proporcional
                final size = constraint.maxWidth * .8;

                return Container(
                  alignment: Alignment.center,
                  width: size,
                  height: size,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF686D70),
                        Color(0xFF050F11),
                      ],
                    ),
                  ),
                  child: getChild(size * .9),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

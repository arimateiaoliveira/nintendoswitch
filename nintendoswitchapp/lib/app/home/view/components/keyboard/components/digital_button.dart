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
    //texto ou icone referenciado conforme implementacao
    Widget? child;

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

    Widget getChild(double size) {
      //TODO: diminuir logica
      //definicoes para mddelo de botao do tipo acao
      if (model == DigitalModel.action) {
        if (position == DigitalPosition.up) {
          child = Text('X', style: TextStyle(color: Colors.white, fontSize: size / 1.5));
        } else if (position == DigitalPosition.down) {
          child = Text('B', style: TextStyle(color: Colors.white, fontSize: size / 1.5));
        } else if (position == DigitalPosition.left) {
          child = Text('Y', style: TextStyle(color: Colors.white, fontSize: size / 1.5));
        } else if (position == DigitalPosition.right) {
          child = Text('A', style: TextStyle(color: Colors.white, fontSize: size / 1.5));
        }
      }

      //definicoes para modelo de botao do tipo direcao
      else if (model == DigitalModel.direction) {
        if (position == DigitalPosition.up) {
          child = Icon(Icons.arrow_drop_up, size: size);
        } else if (position == DigitalPosition.down) {
          child = Icon(Icons.arrow_drop_down, size: size);
        } else if (position == DigitalPosition.left) {
          child = Icon(Icons.arrow_left, size: size);
        } else if (position == DigitalPosition.right) {
          child = Icon(Icons.arrow_right, size: size);
        }
      }
      return child!;
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

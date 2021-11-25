import 'package:flutter/material.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/digital_button.dart';

class DigitalButtonSet extends StatelessWidget {
  const DigitalButtonSet({
    Key? key,
    required this.model,
  }) : super(key: key);

  //modelo de botao [direcion] ou [aciton]
  final DigitalModel model;

  @override
  Widget build(BuildContext context) {
    //posicionamento
    const up = DigitalPosition.up;
    const down = DigitalPosition.down;
    const left = DigitalPosition.left;
    const right = DigitalPosition.right;

    return LayoutBuilder(builder: (ctx, constraints) {
      return Stack(
        children: [
          DigitalButton(model: model, position: up),
          DigitalButton(model: model, position: down),
          DigitalButton(model: model, position: left),
          DigitalButton(model: model, position: right),
        ],
      );
    });
  }
}

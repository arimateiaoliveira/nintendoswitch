import 'package:flutter/material.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/big_button.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/digital_button.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/sideboard.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        //expanded width calculate - side width / screen width -
        const Expanded(
          flex: 33,
          child: SideBoard(
            actionDownButton: BigButton(size: 50),
          ),
        ),
        Expanded(
          flex: 34,
          child: Container(),
        ),
        Expanded(
          flex: 33,
          child: SideBoard(
            position: Position.right,
            color: const Color(0xFFFF5F53),
            actionDownButton: DigitalButton.type1(
              buttonType1: DigitalButtonType1.up,
            ),
            actionUPButton: const BigButton(size: 50),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/big_button.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/digital_button.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/digital_button_set.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/home_button.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/sideboard.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/sound_button.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/volume_button.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SideBoard(
          position: Position.left,
          color: Color(0xFF00BDDD),
          soundButton: VolumeButton(),
          actionUPButton: BigButton(),
          actionDownButton: DigitalButtonSet(
            model: DigitalModel.direction,
          ),
          auxButton: SoundButton(),
        ),
        //TODO: implement logo
        const Text('LOGO'),
        const SideBoard(
          position: Position.right,
          color: Color(0xFFFF5F53),
          soundButton: VolumeButton(isPlus: true),
          actionDownButton: BigButton(),
          actionUPButton: DigitalButtonSet(
            model: DigitalModel.action,
          ),
          auxButton: HomeButton(),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nintendoswitchapp/app/home/view/components/logo/clip_logo.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: LogoClipper(),
      child: Container(
        width: 200,
        height: 200,
        decoration: const BoxDecoration(
          color: Colors.grey,
        ),
      ),
    );
  }
}

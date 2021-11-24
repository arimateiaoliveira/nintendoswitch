import 'package:flutter/material.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/keyboard.dart';
import 'package:nintendoswitchapp/app/home/view/components/screen/screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4B5054),
              Color(0xFF272B2E),
            ],
          ),
        ),
        child: Column(
          children: const [
            Expanded(
              flex: 61,
              child: Screen(),
            ),
            Expanded(
              flex: 39,
              child: Keyboard(),
            ),
          ],
        ),
      ),
    );
  }
}

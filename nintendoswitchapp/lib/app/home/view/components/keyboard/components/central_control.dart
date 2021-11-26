import 'package:flutter/material.dart';
import 'package:nintendoswitchapp/app/home/view/components/keyboard/components/small_light.dart';
import 'package:nintendoswitchapp/app/home/view/components/logo/logo.dart';

class CentralControl extends StatelessWidget {
  const CentralControl({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * .39,
      width: size.width * .34,
      child: LayoutBuilder(builder: (ctx, cnst) {
        return Center(
          child: Container(
            alignment: Alignment.center,
            height: cnst.maxHeight * .18,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallLight(
                      size: cnst.maxWidth * 0.04,
                      on: true,
                    ),
                    SmallLight(size: cnst.maxWidth * 0.04),
                    SmallLight(size: cnst.maxWidth * 0.04),
                    SmallLight(size: cnst.maxWidth * 0.04),
                  ],
                ),
                SizedBox(
                  width: cnst.maxWidth * .37,
                  height: cnst.maxWidth * .37,
                  child: const Logo(),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SmallLight(size: cnst.maxWidth * 0.04),
                    SmallLight(size: cnst.maxWidth * 0.04),
                    SmallLight(size: cnst.maxWidth * 0.04),
                    SmallLight(size: cnst.maxWidth * 0.04),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
class munebut extends StatelessWidget {
  const munebut({
    Key? key, required this.press, required this.riveInit,
  }) : super(key: key);
  final VoidCallback press;
  final ValueChanged <Artboard> riveInit;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RiveAnimation.asset("images/mune.png",
        onInit:riveInit  ,),

    );
  }
}

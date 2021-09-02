import 'package:flutter/material.dart';

class MyPig extends StatelessWidget {
  const MyPig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      child: Image.asset("images/Game_Flappy_piggy.png"),
    );
  }
}

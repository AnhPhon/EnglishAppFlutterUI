import 'package:flutter/material.dart';

class MyBarried extends StatelessWidget {
  const MyBarried({Key? key, this.sizeHeight}) : super(key: key);

  final sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage("images/BarriedColum.png"),
      height: sizeHeight,
    );
  }
}

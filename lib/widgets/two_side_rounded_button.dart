import 'package:flutter/material.dart';

import '../constants.dart';

class TwoSideRoundedButton extends StatelessWidget {
  const TwoSideRoundedButton({
    Key? key,
    required this.text,
    required this.radious,
    required this.press,
  }) : super(key: key);

  final String text;
  final double radious;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(29),
            bottomRight: Radius.circular(29),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

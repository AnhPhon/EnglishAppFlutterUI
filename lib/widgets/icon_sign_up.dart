import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconSignUp extends StatelessWidget {
  const IconSignUp({
    Key? key,
    required this.press,
    required this.icon,
  }) : super(key: key);

  final Function() press;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          icon,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}

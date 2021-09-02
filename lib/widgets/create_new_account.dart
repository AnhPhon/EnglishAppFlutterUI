import 'package:flutter/material.dart';

class CreateNewAcount extends StatelessWidget {
  const CreateNewAcount({
    Key? key,
    required this.press,
  }) : super(key: key);

  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Text(
        "Sign up",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

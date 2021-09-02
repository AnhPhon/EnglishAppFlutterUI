import 'package:flutter/material.dart';

class ForgotPass extends StatelessWidget {
  const ForgotPass({
    Key? key,
    required this.press,
  }) : super(key: key);

  final Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Text(
        "Forgot password",
        style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 13,
          color: Colors.black,
        ),
      ),
    );
  }
}

import 'package:englishapp/widgets/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.onchanged,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final ValueChanged<String> onchanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onchanged,
        decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            border: InputBorder.none),
      ),
    );
  }
}

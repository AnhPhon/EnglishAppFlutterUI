import 'package:flutter/material.dart';

class SkillsTextDialog extends StatelessWidget {
  const SkillsTextDialog({
    Key? key,
    required this.skillsText,
    required this.textdetails,
  }) : super(key: key);
  final String skillsText;
  final String textdetails;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 3),
            child: Row(
              children: [
                Icon(
                  Icons.favorite,
                  size: 18,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  skillsText,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  textdetails,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    required this.textNameMenu,
    required this.iconMenu,
    required this.press,
  }) : super(key: key);

  final String textNameMenu;
  final Icon iconMenu;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: GestureDetector(
        onTap: press,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: <Widget>[
              iconMenu,
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  textNameMenu,
                  style: TextStyle(color: Colors.black, fontSize: 17),
                ),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}

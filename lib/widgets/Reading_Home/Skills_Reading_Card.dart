import 'package:flutter/material.dart';

class SkillReadingCard extends StatelessWidget {
  const SkillReadingCard({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 33,
            color: Color(0xFFD3D3D3).withOpacity(.7),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: <Widget>[
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            SizedBox(
              width: 5,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: name,
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Spacer(),
            IconButton(
              icon: Icon(Icons.arrow_forward_ios),
              color: Colors.black,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

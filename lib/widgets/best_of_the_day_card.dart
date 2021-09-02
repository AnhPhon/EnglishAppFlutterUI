import 'package:englishapp/widgets/book_rating.dart';
import 'package:englishapp/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class bestOfTheDayCard extends StatelessWidget {
  const bestOfTheDayCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 17,
                right: size.width * .35,
              ),
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.50),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Let's explore with the piglet",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(.8),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Baby's little island",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Part 1",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black.withOpacity(.8),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: <Widget>[
                      BookRating(
                        score: 5.0,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Text(
                          "A small island with many miracles is waiting for you",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black.withOpacity(.8),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 20,
            top: 0,
            child: Image.asset(
              "images/4.png",
              width: size.width * .30,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                press: () {},
                radious: 29,
                text: 'Read',
              ),
            ),
          )
        ],
      ),
    );
  }
}

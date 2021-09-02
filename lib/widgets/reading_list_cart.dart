import 'package:englishapp/widgets/book_rating.dart';
import 'package:englishapp/widgets/two_side_rounded_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class ReadingListCard extends StatelessWidget {
  const ReadingListCard({
    Key? key,
    required this.images,
    required this.title,
    required this.auth,
    required this.rating,
    required this.pressDetails,
    required this.pressRead,
  }) : super(key: key);

  final String images;
  final String title;
  final String auth;
  final double rating;
  final Function() pressDetails;
  final Function() pressRead;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, bottom: 20),
      height: 208,
      width: 200,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            top: 40,
            child: Container(
              height: 230,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(29),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: kShadowColor,
                    ),
                  ]),
            ),
          ),
          Image.asset(
            images,
            width: 110,
          ),
          Positioned(
            top: 36,
            right: 10,
            child: Column(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite_border_outlined),
                ),
                BookRating(
                  score: rating,
                ),
              ],
            ),
          ),
          Positioned(
            top: 140,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 37,
                      ),
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(color: kBlackColor),
                          children: [
                            TextSpan(
                              text: "$title\n",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: auth,
                              style: TextStyle(
                                color: kBlackColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: pressDetails,
                          child: Container(
                            width: 101,
                            padding: EdgeInsets.symmetric(vertical: 10),
                            alignment: Alignment.center,
                            child: Text("Details"),
                          ),
                        ),
                        Expanded(
                          child: TwoSideRoundedButton(
                            press: pressRead,
                            radious: 29,
                            text: "Read",
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

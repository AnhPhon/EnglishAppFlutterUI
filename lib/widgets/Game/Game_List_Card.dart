import 'package:englishapp/widgets/book_rating.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Games_List_Card extends StatelessWidget {
  const Games_List_Card({
    Key? key,
    required this.image,
    required this.nameGame,
    required this.textDetails,
    required this.color1,
    required this.color2,
    required this.score,
    required this.press,
    required this.pressPlay,
  }) : super(key: key);

  final String image;
  final String nameGame;
  final String textDetails;
  final Color color1;
  final Color color2;
  final double score;
  final Function() press;
  final Function() pressPlay;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      width: 200,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            child: Transform(
              transform: Matrix4.skewY(-0.15),
              child: Container(
                height: 250,
                width: 170,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      color1,
                      color2,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 60, left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            nameGame,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 10),
                            child: Row(
                              children: [
                                Column(
                                  children: [
                                    BookRating(score: score),
                                  ],
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        textDetails,
                                        maxLines: 3,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 10),
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, right: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Transform(
                                  transform: Matrix4.skewY(-0.01),
                                  child: GestureDetector(
                                    onTap: press,
                                    child: Material(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            left: 10,
                                            right: 10),
                                        child: Text(
                                          "Detail",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Transform(
                                  transform: Matrix4.skewY(-0.01),
                                  child: GestureDetector(
                                    onTap: pressPlay,
                                    child: Material(
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(5),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            top: 5,
                                            bottom: 5,
                                            left: 15,
                                            right: 15),
                                        child: Text(
                                          "Play",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 190,
            right: 0,
            child: Image(
              image: AssetImage(image),
              height: 150,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:englishapp/screens/Home_Reading/Reading_screen_Book3.dart';
import 'package:englishapp/widgets/Reading_Home/Skills_Reading_Card.dart';
import 'package:englishapp/widgets/book_rating.dart';
import 'package:englishapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class HomeReadingBook2 extends StatefulWidget {
  const HomeReadingBook2({Key? key}) : super(key: key);

  @override
  _HomeReadingBook2State createState() => _HomeReadingBook2State();
}

class _HomeReadingBook2State extends State<HomeReadingBook2> {
  Icon iconFavoriterReading = new Icon(Icons.favorite_border_outlined);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: ClipRRect(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "images/bg.png",
                  ),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),
        ),
      ),
      extendBodyBehindAppBar: false,
      extendBody: true,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: size.height * .3,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "images/bg.png",
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      children: <Widget>[
                        BookInforReading(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 220, left: 35, right: 35),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20),
                      SkillReadingCard(
                        name: 'Skill 1: Reading',
                      ),
                      SizedBox(height: 20),
                      SkillReadingCard(
                        name: 'Skill 2: Writing',
                      ),
                      SizedBox(height: 20),
                      SkillReadingCard(
                        name: 'Skill 3: Speaking',
                      ),
                      SizedBox(height: 20),
                      SkillReadingCard(
                        name: 'Skill 4: Listening',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: " You might also ",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                          TextSpan(
                            text: "like...",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 210,
                          width: double.infinity,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 170,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              color: Color(0xFFFFF8F9),
                              image: DecorationImage(
                                  image: AssetImage("images/bg.png"),
                                  fit: BoxFit.fill),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, right: 120, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Amazing science",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Part 1",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          "This English children's book is presented with many lovely color pictures and familiar topics in life such as: palettes, characters, numbers, animals... English, but also train thinking, very suitable for preschool children.",
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(children: <Widget>[
                                    BookRating(score: 4.8),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    RoundedButton(
                                        text: "Read",
                                        press: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return HomeReadingBook3();
                                              },
                                            ),
                                          );
                                        },
                                        verticalPadding: 10,
                                        fontSize: 12),
                                  ]),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 0,
                          top: 0,
                          child: Image.asset(
                            "images/3.png",
                            height: 140,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Row BookInforReading() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Bayby and friends",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                "Part 1",
                style: TextStyle(fontSize: 20),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Each book will have 15 units revolving around familiar topics, close to children such as their family and friends. In each lesson, students will improve their knowledge of vocabulary, grammar, and good English listening and speaking skills.",
                          maxLines: 7,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          setState(() {
                            if (this.iconFavoriterReading.icon ==
                                Icons.favorite_border_outlined) {
                              this.iconFavoriterReading =
                                  new Icon(Icons.favorite, color: Colors.red);
                            } else {
                              this.iconFavoriterReading = new Icon(
                                Icons.favorite_border_outlined,
                              );
                            }
                          });
                        },
                        icon: iconFavoriterReading,
                      ),
                      BookRating(score: 4.4),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        Image.asset(
          "images/2.png",
          height: 150,
        ),
      ],
    );
  }
}

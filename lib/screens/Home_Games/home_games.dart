import 'package:englishapp/constants.dart';
import 'package:englishapp/screens/Home_Games/Flappy_Piggy_Home.dart';
import 'package:englishapp/widgets/Diolog/Game_Details_Dialog.dart';
import 'package:englishapp/widgets/Game/Game_List_Card.dart';

import 'package:flutter/material.dart';

class HomeGames extends StatefulWidget {
  const HomeGames({Key? key}) : super(key: key);

  @override
  _HomeGamesState createState() => _HomeGamesState();
}

class _HomeGamesState extends State<HomeGames> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2b9348),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: Text(
                            "to the",
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[700],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55),
                          child: Text(
                            "Game World!",
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(111, 0, 244, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Text("Games",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text("Continue Playing...", style: kTextGame),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 260,
                  width: double.infinity,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Transform(
                          transform: Matrix4.skewY(-0.08),
                          child: Container(
                            height: 160,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color.fromRGBO(209, 4, 43, 1),
                                  Color.fromRGBO(214, 61, 99, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 120, left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Perfect Memory",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Level 2",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 10, right: 30),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  TweenAnimationBuilder<double>(
                                    tween: Tween(begin: 0, end: 0.6),
                                    duration: Duration(seconds: 3),
                                    builder: (context, double value, child) =>
                                        Padding(
                                      padding: const EdgeInsets.only(
                                          top: 25, left: 10),
                                      child: Row(
                                        children: [
                                          CircularProgressIndicator(
                                            value: value,
                                            color: Colors.green,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            (value * 100).toInt().toString() +
                                                "%",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Transform(
                                    transform: Matrix4.skewY(-0.08),
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Material(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              top: 10,
                                              bottom: 10,
                                              left: 20,
                                              right: 20),
                                          child: Text(
                                            "Play",
                                            style: TextStyle(
                                                color: Colors.red,
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
                      Positioned(
                        left: 210,
                        bottom: 90,
                        child: Image(
                          image: AssetImage("images/FlipCard.png"),
                          height: 180,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text("Let's explore together...", style: kTextGame),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Games_List_Card(
                      image: 'images/Game_chess.png',
                      nameGame: 'Master\n     Chess',
                      textDetails:
                          'Chess is not a game of chance, it is based purely on tactics and strategy. However, the game is so complex that even the best players cannot count all the options: although there are only 64 squares and 32 pieces on the board, the number of moves that can be than the number of atoms in the universe.',
                      color1: Color.fromRGBO(234, 70, 61, 1),
                      color2: Color.fromRGBO(238, 109, 43, 1),
                      score: 4.9,
                      press: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return GameDetailsDialog(
                              images: 'images/Game_chess.png',
                              nameGame: 'Master Chess',
                              textDetails:
                                  '      Chess is not a game of chance, it is based purely on tactics and strategy. However, the game is so complex that even the best players cannot count all the options: although there are only 64 squares and 32 pieces on the board, the number of moves that can be than the number of atoms in the universe.',
                              color1: Color.fromRGBO(234, 70, 61, 1),
                              color2: Color.fromRGBO(238, 109, 43, 1),
                            );
                          },
                        );
                      },
                      pressPlay: () {},
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Games_List_Card(
                      image: 'images/game_pig.png',
                      nameGame: 'Flappy\n     Piggy',
                      textDetails:
                          'The goal of the game is to control a piglet flying through the pipes. If the piglet touches the obstacle, the game will be over. Every time the piglet passes a pair of pipes, the player gets one point. It uses graphics similar to Super Mario Bros., with an extremely simple control system.',
                      color1: Color.fromRGBO(255, 193, 37, 1),
                      color2: Color.fromRGBO(238, 201, 0, 1),
                      score: 4.8,
                      press: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return GameDetailsDialog(
                              images: 'images/game_pig.png',
                              nameGame: 'Flappy Piggy',
                              textDetails:
                                  '      The goal of the game is to control a piglet flying through the pipes. If the piglet touches the obstacle, the game will be over. Every time the piglet passes a pair of pipes, the player gets one point. It uses graphics similar to Super Mario Bros., with an extremely simple control system.',
                              color1: Color.fromRGBO(255, 193, 37, 1),
                              color2: Color.fromRGBO(238, 201, 0, 1),
                            );
                          },
                        );
                      },
                      pressPlay: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return HomeGameFlappyPiggy();
                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Games_List_Card(
                      image: 'images/FlipCard.png',
                      nameGame: 'Perfect\n     Memory',
                      textDetails:
                          'Want to have fun with a free entertaining & educational game for kids which helps to increase the IQ of your baby? Brain Training game improve your child concentration, attention and speed of reaction by playing memory match games.',
                      color1: Color.fromRGBO(0, 238, 238, 1),
                      color2: Color.fromRGBO(102, 205, 170, 1),
                      score: 5.0,
                      press: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return GameDetailsDialog(
                              images: 'images/FlipCard.png',
                              nameGame: 'Perfect Memory',
                              textDetails:
                                  '      Want to have fun with a free entertaining & educational game for kids which helps to increase the IQ of your baby? Brain Training game improve your child concentration, attention and speed of reaction by playing memory match games.',
                              color1: Color.fromRGBO(0, 238, 238, 1),
                              color2: Color.fromRGBO(102, 205, 170, 1),
                            );
                          },
                        );
                      },
                      pressPlay: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

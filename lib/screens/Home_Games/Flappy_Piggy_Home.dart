import 'dart:async';

import 'package:englishapp/screens/Home_Games/My_Barried.dart';
import 'package:englishapp/screens/Home_Games/My_Pig.dart';
import 'package:flutter/material.dart';

class HomeGameFlappyPiggy extends StatefulWidget {
  const HomeGameFlappyPiggy({Key? key}) : super(key: key);

  @override
  _HomeGameFlappyPiggyState createState() => _HomeGameFlappyPiggyState();
}

class _HomeGameFlappyPiggyState extends State<HomeGameFlappyPiggy> {
  // ignore: unused_field
  static double pigYaxis = 0;
  double time = 0;
  double height = 0;
  double initialHeight = pigYaxis;
  bool gameHasStarted = false;

  void jum() {
    setState(() {
      time = 0;
      initialHeight = pigYaxis;
    });
  }

  void startGame() {
    gameHasStarted = true;
    Timer.periodic(Duration(milliseconds: 60), (timer) {
      time += 0.05;
      height = -6.9 * time * time + 2.8 * time;
      setState(() {
        pigYaxis = initialHeight - height;
      });
      if (pigYaxis > 1) {
        timer.cancel();
        gameHasStarted = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    if (gameHasStarted) {
                      jum();
                    } else {
                      startGame();
                    }
                  },
                  child: AnimatedContainer(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/Background_Game_Sky.png"),
                            fit: BoxFit.fill),
                      ),
                      alignment: Alignment(0, pigYaxis),
                      duration: Duration(milliseconds: 0),
                      child: MyPig()),
                ),
                Container(
                  alignment: Alignment(0, -0.3),
                  child: gameHasStarted
                      ? Text(" ")
                      : Text(
                          "T A P  T O  P L A Y",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/Background_Game_Bottom.png"),
                  fit: BoxFit.fill),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/Background_Game_Bottom_2.png"),
                  fit: BoxFit.fill,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SCORE",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "0",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "BEST SCORE",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "10",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

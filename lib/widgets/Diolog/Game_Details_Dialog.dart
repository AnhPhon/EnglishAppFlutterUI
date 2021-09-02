import 'package:flutter/material.dart';

class GameDetailsDialog extends StatelessWidget {
  const GameDetailsDialog({
    Key? key,
    required this.images,
    required this.nameGame,
    required this.textDetails,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  final String images;
  final String nameGame;
  final String textDetails;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        type: MaterialType.transparency,
        child: Container(
          height: 550,
          width: 250,
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 450,
                  width: 250,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        color1,
                        color2,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(29),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(top: 95),
                            child: Text(
                              nameGame,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      Text(
                                        textDetails,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 16),
                                        maxLines: 15,
                                        overflow: TextOverflow.ellipsis,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 10,
                right: 10,
                child: Image(
                  image: AssetImage("$images"),
                  height: 200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:englishapp/constants.dart';
import 'package:englishapp/screens/Home_Reading/Reading_screen.dart';
import 'package:englishapp/screens/Home_Reading/Reading_screen_Book2.dart';
import 'package:englishapp/screens/Home_Reading/Reading_screen_Book3.dart';
import 'package:englishapp/widgets/Diolog/Details_Dialog.dart';

import 'package:englishapp/widgets/best_of_the_day_card.dart';

import 'package:englishapp/widgets/reading_list_cart.dart';

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              color: Color(0xFFb0e3f0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * 0.05),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.subtitle1,
                            children: [
                              TextSpan(
                                text: "What are you\nlearning ",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.black),
                              ),
                              TextSpan(
                                text: "today?",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 40,
                                    color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          auth: 'Part 1',
                          images: "images/1.png",
                          pressDetails: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: Material(
                                    type: MaterialType.transparency,
                                    child: DetailsDialog(
                                      imageDialog: 'images/1.png',
                                      labelDialog: 'Baby and family',
                                      authorDiolog: 'Part 1',
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return HomeReadings();
                                },
                              ),
                            );
                          },
                          rating: 4.9,
                          title: 'Baby and family',
                        ),
                        ReadingListCard(
                          auth: 'Part 1',
                          images: "images/2.png",
                          pressDetails: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: Material(
                                    type: MaterialType.transparency,
                                    child: DetailsDialog(
                                      imageDialog: 'images/2.png',
                                      labelDialog: 'Baby and friends',
                                      authorDiolog: 'Part 1',
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return HomeReadingBook2();
                                },
                              ),
                            );
                          },
                          rating: 4.8,
                          title: 'Baby and friends',
                        ),
                        ReadingListCard(
                          auth: 'Part 1',
                          images: "images/3.png",
                          pressDetails: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: Material(
                                    type: MaterialType.transparency,
                                    child: DetailsDialog(
                                      imageDialog: 'images/3.png',
                                      labelDialog: 'Amazing science',
                                      authorDiolog: 'Part 1',
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          pressRead: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return HomeReadingBook3();
                                },
                              ),
                            );
                          },
                          rating: 4.0,
                          title: 'Amazing science',
                        ),
                        ReadingListCard(
                          auth: 'Part 1',
                          images: "images/4.png",
                          pressDetails: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: Material(
                                    type: MaterialType.transparency,
                                    child: DetailsDialog(
                                      imageDialog: 'images/4.png',
                                      labelDialog: "Baby's little island",
                                      authorDiolog: 'Part 1',
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          pressRead: () {},
                          rating: 5.0,
                          title: "Baby's little island",
                        ),
                        ReadingListCard(
                          auth: 'Part 1',
                          images: "images/5.png",
                          pressDetails: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: Material(
                                    type: MaterialType.transparency,
                                    child: DetailsDialog(
                                      imageDialog: 'images/5.png',
                                      labelDialog: 'English grammar',
                                      authorDiolog: 'Part 1',
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          pressRead: () {},
                          rating: 4.4,
                          title: 'English grammar',
                        ),
                        ReadingListCard(
                          auth: 'Part 2',
                          images: "images/6.png",
                          pressDetails: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: Material(
                                    type: MaterialType.transparency,
                                    child: DetailsDialog(
                                      imageDialog: 'images/6.png',
                                      labelDialog: 'English grammar',
                                      authorDiolog: 'Part 2',
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          pressRead: () {},
                          rating: 4.9,
                          title: 'English grammar',
                        ),
                        ReadingListCard(
                          auth: 'Part 3',
                          images: "images/7.png",
                          pressDetails: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: Material(
                                    type: MaterialType.transparency,
                                    child: DetailsDialog(
                                      imageDialog: 'images/7.png',
                                      labelDialog: 'Baby and friends',
                                      authorDiolog: 'Part 3',
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          pressRead: () {},
                          rating: 4.5,
                          title: 'English grammar',
                        ),
                        ReadingListCard(
                          auth: 'Part 4',
                          images: "images/8.png",
                          pressDetails: () {
                            showDialog(
                              context: context,
                              builder: (context) {
                                return Center(
                                  child: Material(
                                    type: MaterialType.transparency,
                                    child: DetailsDialog(
                                      imageDialog: 'images/8.png',
                                      labelDialog: 'English grammar',
                                      authorDiolog: 'Part 4',
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          pressRead: () {},
                          rating: 4.7,
                          title: 'English grammar',
                        ),
                        SizedBox(
                          width: 30,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: TextStyle(fontSize: 20, color: Colors.black),
                            children: [
                              TextSpan(
                                text: "Best of the ",
                                style: TextStyle(
                                  fontSize: 30,
                                ),
                              ),
                              TextSpan(
                                text: "day",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 40,
                                  color: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                        bestOfTheDayCard(size: size),
                        SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            children: [
                              Text(
                                "Continue ",
                                style: TextStyle(fontSize: 18),
                              ),
                              Text(
                                "Reading ...",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: Color(0xFFD3D3D3).withOpacity(.80),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(39),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Baby and friends",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "Part 1",
                                                style: TextStyle(
                                                  color: kSmallText,
                                                ),
                                              ),
                                              Align(
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: Text(
                                                  "Chapter 2",
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: kSmallText),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          "images/2.png",
                                          width: 60,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                TweenAnimationBuilder<double>(
                                  tween: Tween(begin: 0, end: .5),
                                  duration: Duration(seconds: 6),
                                  builder: (context, double value, child) =>
                                      Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                              (value * 100).toInt().toString() +
                                                  "%"),
                                        ],
                                      ),
                                      LinearProgressIndicator(
                                        value: value,
                                        color: Colors.red,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
    );
  }
}

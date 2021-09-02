import 'package:animations/animations.dart';
import 'package:englishapp/screens/Home_Games/home_games.dart';
import 'package:englishapp/screens/Home_Profile/home_profile.dart';
import 'package:englishapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

import 'Home_Notes/home_note.dart';

class HomeScreenBottomBar extends StatefulWidget {
  const HomeScreenBottomBar({Key? key}) : super(key: key);

  @override
  _HomeScreenBottomBarState createState() => _HomeScreenBottomBarState();
}

class _HomeScreenBottomBarState extends State<HomeScreenBottomBar> {
  int pageIndex = 0;
  List<Widget> pageList = <Widget>[
    HomeScreen(),
    HomeGames(),
    NotesPage(),
    HomeProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: pageList[pageIndex],
      body: PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
            FadeThroughTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          child: child,
        ),
        child: pageList[pageIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
              ),
              label: "Learn"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.sports_esports,
              ),
              label: "Game"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.border_color,
              ),
              label: "Note"),
          BottomNavigationBarItem(
              icon: CircleAvatar(
                radius: 14,
                backgroundImage: AssetImage("images/IconAvartar.png"),
              ),
              label: "Profile"),
        ],
        selectedItemColor: Colors.green[700],
        unselectedItemColor: Colors.black.withOpacity(.4),
        selectedIconTheme: IconThemeData(
          color: Colors.green[700],
        ),
        backgroundColor: Color(0xFFb0e3f0),
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}

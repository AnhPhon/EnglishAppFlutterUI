import 'package:englishapp/constants.dart';
import 'package:englishapp/screens/Home_Games/Flappy_Piggy_Home.dart';
import 'package:englishapp/screens/home_login.dart';

import 'package:englishapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'English Book App',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFb0e3f0),
        appBarTheme: AppBarTheme(
          elevation: 0,
          brightness: Brightness.light,
          iconTheme: IconThemeData(
            color: kBlackColor,
          ),
          textTheme: TextTheme(
            headline1: TextStyle(color: Colors.white),
          ),
        ),
        textTheme: Theme.of(context).textTheme.apply(displayColor: kBlackColor),
      ),
      home: HomeLogin(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Login.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 150),
          child: Column(
            children: <Widget>[
              Column(
                children: [
                  Text(
                    "English",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 70,
                      color: Colors.green,
                    ),
                  ),
                  Text(
                    "For",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.yellow,
                    ),
                  ),
                  Text(
                    "Childs",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .4,
                child: RoundedButton(
                  fontSize: 17,
                  text: "Start reading",
                  verticalPadding: 16,
                  press: () {
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

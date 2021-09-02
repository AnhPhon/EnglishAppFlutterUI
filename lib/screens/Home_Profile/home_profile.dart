import 'package:englishapp/constants.dart';
import 'package:englishapp/screens/Home_Profile/Profile_Menu.dart';
import 'package:englishapp/screens/home_login.dart';

import 'package:flutter/material.dart';

class HomeProfile extends StatelessWidget {
  const HomeProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 30),
                child: Text(
                  "My Profile",
                  style: TextStyle(color: kBlackColor, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 110,
              width: 115,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/IconAvartar.png"),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: SizedBox(
                      height: 46,
                      width: 46,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_a_photo,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            ProfileMenu(
              iconMenu: Icon(
                Icons.portrait,
                color: Colors.orange[300],
              ),
              textNameMenu: 'My Profile',
              press: () {},
            ),
            SizedBox(height: 20),
            ProfileMenu(
              iconMenu: Icon(
                Icons.notifications,
                color: Colors.orange[300],
              ),
              textNameMenu: 'Notifications',
              press: () {},
            ),
            SizedBox(height: 20),
            ProfileMenu(
              iconMenu: Icon(
                Icons.settings,
                color: Colors.orange[300],
              ),
              textNameMenu: 'Settings',
              press: () {},
            ),
            SizedBox(height: 20),
            ProfileMenu(
              iconMenu: Icon(
                Icons.help_center,
                color: Colors.orange[300],
              ),
              textNameMenu: 'Help Center',
              press: () {},
            ),
            SizedBox(height: 20),
            ProfileMenu(
              iconMenu: Icon(
                Icons.star,
                color: Colors.orange[300],
              ),
              textNameMenu: 'App Reviews',
              press: () {},
            ),
            SizedBox(height: 20),
            ProfileMenu(
              iconMenu: Icon(
                Icons.logout,
                color: Colors.orange[300],
              ),
              textNameMenu: 'Log Out',
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeLogin();
                    },
                  ),
                );
              },
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

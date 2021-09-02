import 'package:englishapp/screens/bottombar_main_screens.dart';

import 'package:englishapp/screens/Home_Sign_Up/home_sign_up.dart';
import 'package:englishapp/widgets/button_login.dart';
import 'package:englishapp/widgets/create_new_account.dart';
import 'package:englishapp/widgets/icon_sign_up.dart';
import 'package:englishapp/widgets/rounded_input_field.dart';
import 'package:englishapp/widgets/save_pass.dart';
import 'package:englishapp/widgets/text_field_container.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeLogin extends StatelessWidget {
  const HomeLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "images/HomeLogin.png",
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 350),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RoundedInputField(
                  hintText: 'Enter your account',
                  icon: Icons.person,
                  onchanged: (String value) {},
                ),
                TextFieldContainer(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter your password',
                      icon: Icon(
                        Icons.lock,
                        color: Colors.black,
                      ),
                      suffixIcon: Icon(
                        Icons.visibility,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SavePass(),
                Dangnhap(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreenBottomBar();
                        },
                      ),
                    );
                  },
                  text: 'Login',
                ),
                SizedBox(
                  height: 27,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Don't have account ? "),
                      CreateNewAcount(
                        press: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return HomeSignUp();
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconSignUp(
                      press: () {},
                      icon: 'images/IconFaceBook.svg',
                    ),
                    IconSignUp(
                      press: () {},
                      icon: 'images/IconGoogle.svg',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

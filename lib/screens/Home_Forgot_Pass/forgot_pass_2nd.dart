import 'package:englishapp/screens/home_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ForgotPassReturnCode extends StatelessWidget {
  const ForgotPassReturnCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Welcome back",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFFb0e3f0),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100),
            child: SvgPicture.asset(
              "images/TichXanh.svg",
              height: 200,
              width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "We have sent a link to your email address or phone number. Please check and follow the instructions to reset your password.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 100,
              left: 30,
              right: 30,
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomeLogin();
                    },
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 30,
                      color: Colors.blue.withOpacity(.11),
                    ),
                  ],
                ),
                child: Text(
                  "Return sign in",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

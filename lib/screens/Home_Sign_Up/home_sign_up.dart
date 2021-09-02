import 'package:englishapp/screens/Home_Forgot_Pass/forgot_pass.dart';
import 'package:englishapp/screens/Home_Sign_Up/home_sign_up_2nd.dart';
import 'package:flutter/material.dart';

class HomeSignUp extends StatelessWidget {
  const HomeSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign Up",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Color(0xFFb0e3f0),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    "Register Account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Complete your details or continue\nwith social media",
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SignFormForgot(),
                SizedBox(
                  height: 40,
                ),
                SignFormPassword(),
                SizedBox(height: 40),
                SignFormRetunPassword(),
                SizedBox(height: 90),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeSignUp2nd();
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
                      "Continue",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignFormPassword extends StatelessWidget {
  const SignFormPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(29),
                borderSide: BorderSide(color: Colors.black),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(29),
                borderSide: BorderSide(color: Colors.black),
                gapPadding: 10,
              ),
              suffixIcon: Icon(
                Icons.lock,
                color: Colors.black.withOpacity(.40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SignFormRetunPassword extends StatelessWidget {
  const SignFormRetunPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Confirm Password",
              hintText: "Re-enter your password",
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(29),
                borderSide: BorderSide(color: Colors.black),
                gapPadding: 10,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(29),
                borderSide: BorderSide(color: Colors.black),
                gapPadding: 10,
              ),
              suffixIcon: Icon(
                Icons.lock,
                color: Colors.black.withOpacity(.40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

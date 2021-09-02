import 'package:englishapp/screens/Home_Forgot_Pass/forgot_pass_2nd.dart';

import 'package:flutter/material.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 65),
          child: Text(
            "Forgot Password",
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Color(0xFFb0e3f0),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50, bottom: 10),
                      child: Text(
                        "Forgot Password",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 45,
                      ),
                      child: Text(
                        "Please enter your email or phone number and we will send you a link to return to your account",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 70),
                      child: SignFormForgot(),
                    ),
                    SizedBox(
                      height: 90,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return ForgotPassReturnCode();
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
          ],
        ),
      ),
    );
  }
}

class SignFormForgot extends StatelessWidget {
  const SignFormForgot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: "Email or phone number",
              hintText: "Enter your email or phone number",
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
                Icons.mail_outline,
                color: Colors.black.withOpacity(.40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

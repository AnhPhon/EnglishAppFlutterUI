import 'package:englishapp/screens/home_login.dart';
import 'package:englishapp/widgets/coninue_button.dart';
import 'package:flutter/material.dart';

class HomeSignUp3rd extends StatelessWidget {
  const HomeSignUp3rd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sign up",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Color(0xFFb0e3f0),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Text(
                    "OTP Verification",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "We sent your code",
                    textAlign: TextAlign.center,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("This code will expired in "),
                    TweenAnimationBuilder<double>(
                      tween: Tween(begin: 59.0, end: 0.0),
                      duration: Duration(seconds: 59),
                      builder: (_, value, child) => Text(
                        "00:${value.toInt()}s",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      onEnd: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 120,
                ),
                OTPForm(),
                Padding(
                  padding: const EdgeInsets.only(top: 180, bottom: 20),
                  child: ContinueButton(
                    text: "Continue",
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
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    "Resend OTP code",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
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

class OTPForm extends StatefulWidget {
  const OTPForm({Key? key}) : super(key: key);

  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = new FocusNode();
    pin3FocusNode = new FocusNode();
    pin4FocusNode = new FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
  }

  void nextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 60,
            child: TextFormField(
              autofocus: true,
              obscureText: true,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
              keyboardType: TextInputType.number,
              decoration: OTPInputDecoration(),
              onChanged: (value) {
                nextField(value: value, focusNode: pin2FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              focusNode: pin2FocusNode,
              obscureText: true,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
              keyboardType: TextInputType.number,
              decoration: OTPInputDecoration(),
              onChanged: (value) {
                nextField(value: value, focusNode: pin3FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              focusNode: pin3FocusNode,
              obscureText: true,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
              keyboardType: TextInputType.number,
              decoration: OTPInputDecoration(),
              onChanged: (value) {
                nextField(value: value, focusNode: pin4FocusNode);
              },
            ),
          ),
          SizedBox(
            width: 60,
            child: TextFormField(
              focusNode: pin4FocusNode,
              obscureText: true,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
              keyboardType: TextInputType.number,
              decoration: OTPInputDecoration(),
              onChanged: (value) {
                pin4FocusNode.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  InputDecoration OTPInputDecoration() {
    return InputDecoration(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: EdgeInsets.symmetric(vertical: 15),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: Colors.black),
        gapPadding: 10,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
        borderSide: BorderSide(color: Colors.black),
        gapPadding: 10,
      ),
    );
  }
}

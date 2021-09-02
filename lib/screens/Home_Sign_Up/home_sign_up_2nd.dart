import 'package:englishapp/screens/Home_Sign_Up/home_sign_up_3rd.dart';
import 'package:englishapp/widgets/coninue_button.dart';
import 'package:flutter/material.dart';

class HomeSignUp2nd extends StatelessWidget {
  const HomeSignUp2nd({Key? key}) : super(key: key);

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
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    "Complete Profile",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 35),
                  child: Text(
                    "Complete your details or\ncontinre with social media",
                    textAlign: TextAlign.center,
                  ),
                ),
                BoxProfile(),
                ContinueButton(
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeSignUp3rd();
                        },
                      ),
                    );
                  },
                  text: 'Continue',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BoxProfile extends StatelessWidget {
  const BoxProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          FirstName(),
          SizedBox(height: 35),
          LastName(),
          SizedBox(height: 35),
          PhoneNumber(),
          SizedBox(height: 35),
          Address(),
          SizedBox(height: 35),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  TextFormField Address() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
          Icons.house,
          color: Colors.black.withOpacity(.40),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  TextFormField PhoneNumber() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Phone number",
        hintText: "Enter your phone number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
          Icons.smartphone,
          color: Colors.black.withOpacity(.40),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  TextFormField LastName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "Last name",
        hintText: "Enter your last name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
          Icons.portrait,
          color: Colors.black.withOpacity(.40),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  TextFormField FirstName() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: "First name",
        hintText: "Enter your first name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
          Icons.portrait,
          color: Colors.black.withOpacity(.40),
        ),
      ),
    );
  }
}

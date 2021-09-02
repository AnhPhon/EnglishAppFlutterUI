import 'package:englishapp/screens/Home_Forgot_Pass/forgot_pass.dart';
import 'package:englishapp/widgets/forgo_pass.dart';
import 'package:flutter/material.dart';

class SavePass extends StatefulWidget {
  const SavePass({
    Key? key,
  }) : super(key: key);

  @override
  _SavePassState createState() => _SavePassState();
}

class _SavePassState extends State<SavePass> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Checkbox(
            value: remember,
            onChanged: (value) {
              setState(() {
                remember = value!;
              });
            },
          ),
          Text(
            "Remember me",
            style: TextStyle(fontSize: 13),
          ),
          Spacer(),
          ForgotPass(
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ForgotPassword(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

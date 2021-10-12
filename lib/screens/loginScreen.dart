import 'package:flutter/material.dart';
import 'package:reagan_first/constants.dart';
import 'package:reagan_first/inputs.dart';
import 'package:reagan_first/wordsAboveInput.dart';

class Login extends StatelessWidget {
  static const String id = "Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.0, top: 50),
              child: Text(
                "Login",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, top: 8.0),
              child: Text(
                "Hey there, welcome back",
                style: knormaltexts,
              ),
            ),
            WordsAboveInput(word: "Email"),
            Inputs(),
            WordsAboveInput(
              word: "Password",
            ),
            Inputs(),
          ],
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            Inputs(
              status: false,
              keyboardType: TextInputType.emailAddress,
              isVisible: false,
            ),
            WordsAboveInput(
              word: "Password",
            ),
            Inputs(
              status: true,
              keyboardType: TextInputType.text,
              isVisible: true,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: kblackAsh,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "                                ",
                      style: TextStyle(
                        color: kblackAsh,
                        decoration: TextDecoration.overline,
                        decorationThickness: 2,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 25,
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Column(
              children: [
                Container(
                  child: Center(
                      child: Text(
                    "Login",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff27B9F1),
                  ),
                  margin: EdgeInsets.only(left: 25, right: 25),
                  height: 65,
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "Or",
                  style: TextStyle(fontSize: 25, color: kblackAsh),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  child: Center(
                      child: Text(
                    "Continue with Facebook",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  )),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xff4267B2),
                  ),
                  margin: EdgeInsets.only(left: 25, right: 25),
                  height: 65,
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Center(
                      child: Text(
                    "Continue with Google",
                    style: TextStyle(fontSize: 25, color: Colors.black),
                  )),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      border: Border.all(color: kblackAsh)),
                  margin: EdgeInsets.only(left: 25, right: 25),
                  height: 65,
                ),
                SizedBox(height: 25),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 10),
                        child: Text(
                          "Don't have an account yet?",
                          style: TextStyle(fontSize: 25, color: kblackAsh),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            "Create Account",
                            style: TextStyle(fontSize: 25),
                          ),
                          Text(
                            "                                                  ",
                            style: TextStyle(
                              color: Colors.black,
                              decoration: TextDecoration.overline,
                              decorationThickness: 2,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

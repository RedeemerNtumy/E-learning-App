import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reagan_first/constants.dart';
import 'package:reagan_first/inputs.dart';
import 'package:reagan_first/wordsAboveInput.dart';
import 'package:reagan_first/signWithButton.dart';
import 'package:reagan_first/screens/first.dart';

class Login extends StatelessWidget {
  static const String id = "Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          //added padding here
          // padding: const EdgeInsets.symmetric(horizontal: 5),
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
                  Container(
                    padding: EdgeInsets.only(bottom: 0),
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(color: kblackAsh, width: 1.5),
                      ),
                    ),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: kblackAsh,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, First.id);
                },
                child: Container(
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
                  height: 60,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  "Or",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SignWith(
                textColor: Colors.white,
                signCompany: "Facebook",
                buttonColor: Color(0xff4267B2),
                borderColor: kblackAsh,
                action: () {
                  Navigator.pushNamed(context, First.id);
                },
              ),
              SizedBox(
                height: 15,
              ),
              SignWith(
                textColor: Colors.black,
                signCompany: "Google",
                buttonColor: Colors.white,
                borderColor: kblackAsh,
                action: () {
                  Navigator.pushNamed(context, First.id);
                },
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account yet?",
                      style: TextStyle(fontSize: 15, color: kblackAsh),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 0),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black, width: 2.0))),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, First.id);
                        },
                        child: Text(
                          "Create Account",
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:reagan_first/constants.dart';
import 'package:reagan_first/inputs.dart';
import 'package:reagan_first/wordsAboveInput.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:reagan_first/screens/first.dart';

class Login extends StatelessWidget {
  static const String id = "Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                            bottom: BorderSide(color: kblackAsh, width: 1.5))),
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
              Column(
                children: [
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
                  Text(
                    "Or",
                    style: TextStyle(fontSize: 20, color: Colors.black),
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
                          child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image(
                              width: 30,
                              height: 30,
                              image: Svg('images/Facebook.svg'),
                            ),
                          ),
                          Text(
                            "Continue with Facebook",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      )),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff4267B2),
                      ),
                      margin: EdgeInsets.only(left: 25, right: 25),
                      height: 50,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, First.id);
                    },
                    child: Container(
                      child: Center(
                          child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Image(
                              width: 30,
                              height: 30,
                              image: Svg('images/google.svg'),
                            ),
                          ),
                          Text(
                            "Continue with Google",
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      )),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white,
                          border: Border.all(color: kblackAsh)),
                      margin: EdgeInsets.only(left: 25, right: 25),
                      height: 50,
                    ),
                  ),
                  SizedBox(height: 25),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(
                            "Don't have an account yet?",
                            style: TextStyle(fontSize: 20, color: kblackAsh),
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 0),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.black, width: 2.0))),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, First.id);
                            },
                            child: Text(
                              "Create Account",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:reagan_first/constants.dart';

class First extends StatelessWidget {
  static const String id = "First";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/woman_learn.png'), fit: BoxFit.cover),
          ),
          constraints: BoxConstraints.expand(),
          child: SafeArea(
            child: Flexible(
              child: Container(
                margin: EdgeInsets.only(top: 500),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 5,
                            width: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffe3f5ff),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 5,
                            width: 15,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffe3f5ff),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 5,
                            width: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xff27B9F1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Take online quizzes and test",
                        style: TextStyle(color: Colors.black, fontSize: 30),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "My name is Redeemer Ntumy and I am learning flutter. I am using this design to practise.The owner of this design is Reagan Marfo",
                        style: TextStyle(color: kblackAsh, fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Skip",
                            style: TextStyle(
                                color: kblackAsh,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Container(
                            child: Center(
                                child: Text(
                              "Next",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            )),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Color(0xff27B9F1),
                            ),
                            padding: EdgeInsets.only(
                                left: 35, right: 35, top: 20, bottom: 20),
                            height: 60,
                            width: 140,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}

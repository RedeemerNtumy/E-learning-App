import 'package:flutter/material.dart';

class First extends StatelessWidget {
  static const String id = "First";

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/woman_learn.png'), fit: BoxFit.fill),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.only(top: 500),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              color: Colors.white,
            ),
            child: Column(),
          ),
        ));
  }
}

import 'package:flutter/material.dart';
class Inputs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26, width: 2.0),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        keyboardType: TextInputType.emailAddress,
        textAlign: TextAlign.center,
        onChanged: (value) {},
      ),
    );
  }
}

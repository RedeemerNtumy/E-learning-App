import 'package:flutter/material.dart';
import 'package:reagan_first/constants.dart';

class Inputs extends StatelessWidget {
  final bool status;
  final TextInputType keyboardType;
  final bool isVisible;
  const Inputs(
      {required this.status,
      required this.keyboardType,
      required this.isVisible});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: TextField(
        style: TextStyle(fontSize: 18, color: kblackAsh),
        obscureText: status,
        decoration: InputDecoration(
          suffixIcon: Visibility(
            visible: isVisible,
            child: IconButton(
              onPressed: null,
              icon: Icon(Icons.visibility),
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: kblackAsh, width: 2.0),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xff27B9F1), width: 2.0),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        keyboardType: keyboardType,
        textAlign: TextAlign.start,
        onChanged: (value) {},
      ),
    );
  }
}

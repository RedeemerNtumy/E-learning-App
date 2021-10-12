import 'package:flutter/material.dart';

class Inputs extends StatelessWidget {
  final bool status;
  final TextInputType keyboardType;
  const Inputs({required this.status, required this.keyboardType});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25),
      child: TextField(
        obscureText: status,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black26, width: 2.0),
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
        textAlign: TextAlign.center,
        onChanged: (value) {},
      ),
    );
  }
}

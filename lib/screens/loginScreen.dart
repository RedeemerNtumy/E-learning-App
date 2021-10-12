import 'package:flutter/material.dart';
import 'package:reagan_first/constants.dart';

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
            Padding(
              padding: EdgeInsets.only(left: 25.0, top: 30, bottom: 10),
              child: Text(
                "Email",
                style: knormaltexts,
              ),
            ),
            Padding(
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
            ),
            Padding(
              padding: EdgeInsets.only(left: 25.0, top: 30, bottom: 10),
              child: Text(
                "Password",
                style: knormaltexts,
              ),
            ),
            Padding(
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
            ),
          ],
        ),
      ),
    );
  }
}

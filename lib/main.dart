import 'package:flutter/material.dart';
import 'package:reagan_first/screens/loginScreen.dart';
import 'package:reagan_first/screens/first.dart';
import 'package:reagan_first/screens/second.dart';

void main() {
  runApp(Reagan());
}

class Reagan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Login.id,
      routes: {
        Login.id: (context) => Login(),
        First.id: (context) => First(),
        Second.id: (context) => Second(),
      },
    );
  }
}

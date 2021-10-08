import 'package:flutter/material.dart';
import 'package:reagan_first/screens/loginScreen.dart';

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
      },
    );
  }
}

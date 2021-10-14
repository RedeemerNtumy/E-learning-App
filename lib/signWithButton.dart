import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class SignWith extends StatelessWidget {
  final VoidCallback action;
  final String signCompany;
  final Color buttonColor;
  final Color borderColor;
  final Color textColor;

  const SignWith(
      {required this.action,
      required this.signCompany,
      required this.buttonColor,
      required this.borderColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: Container(
        child: Center(
            child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Image(
                width: 30,
                height: 30,
                image: Svg('images/$signCompany.svg'),
              ),
            ),
            Text(
              "Continue with $signCompany",
              style: TextStyle(fontSize: 20, color: textColor),
            ),
          ],
        )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: buttonColor,
            border: Border.all(color: borderColor)),
        margin: EdgeInsets.only(left: 25, right: 25),
        height: 50,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'constants.dart';

class WordsAboveInput extends StatelessWidget {
  final String word;
  WordsAboveInput({required this.word});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.0, top: 30, bottom: 10),
      child: Text(
        word,
        style: knormaltexts,
      ),
    );
  }
}

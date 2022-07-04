import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 50, 0, 0),
      child: Text(
        questionText,
        style: const TextStyle(fontSize: 20, wordSpacing: 10),
        textAlign: TextAlign.center,
      ),
    );
  }
}

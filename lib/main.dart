import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color ?',
        'answers': ["Black", "Red", 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favorite animal ?',
        'answers': ["Rabbit", "Snake", 'Elephant', 'Lion']
      },
      {
        'questionText': 'What\'s your favorite instructor ?',
        'answers': ["Soheil", "Max", 'Akbar', 'Akbar 2']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Fisrt App"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[questionIndex]['questionText'] as String,
            ),
            ...(questions[questionIndex]['answers'] as List<String>)
                .map((answer) => Answer(answerQuestion, answer))
                .toList(),
          ],
        ),
      ),
    );
  }
}

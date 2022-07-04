import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite color ?',
      'answers': [
        {'text': "Black", 'score': 5},
        {'text': "Red", 'score': 5},
        {'text': 'Green', 'score': 5},
        {'text': 'White', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answers': [
        {'text': "Rabbit", 'score': 5},
        {'text': "Snake", 'score': 5},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 5}
      ]
    },
    {
      'questionText': 'What\'s your favorite instructor ?',
      'answers': [
        {'text': "Soheil", 'score': 5},
        {'text': "Max", 'score': 5},
        {'text': 'Akbar', 'score': 5},
        {'text': 'Akbar 2', 'score': 5}
      ]
    },
  ];
  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  void answerQuestion(int score) {
    if (questionIndex >= questions.length) {
      print("We have more questions!");
    }
    totalScore += score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Fisrt App"),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                answerQuestion: answerQuestion,
                questionIndex: questionIndex,
                questions: questions,
              )
            : Result(totalScore, resetQuiz),
      ),
    );
  }
}

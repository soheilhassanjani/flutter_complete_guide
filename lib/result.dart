import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "You did it! $totalScore",
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            textColor: Colors.red,
            onPressed: resetQuiz,
            child: const Text("Restart Quiz!"),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.cyanAccent),
            ),
            onPressed: () => {},
            child: const Text("child"),
          ),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.amber),
                foregroundColor: MaterialStateProperty.all(Colors.black12)),
            onPressed: () {
              print("Elevated");
            },
            child: const Text("ElevatedButton"),
          ),
          TextButton(
            // style: ButtonStyle(
            // backgroundColor: MaterialStateProperty.all(Colors.amber),
            // foregroundColor: MaterialStateProperty.all(Colors.black12)),
            onPressed: () {
              print("Elevated");
            },
            child: const Text("ElevatedButton"),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final int totalQuestions;
  final VoidCallback restartGame;

  Result(this.totalScore, this.restartGame, this.totalQuestions);

  String get resetPhrase {
    String resultText = "You did it";
    if (totalScore == totalQuestions) {
      resultText = "You had done a Stunning job. Genius!";
    } else if (totalScore <= totalQuestions / 2 && totalScore != 0) {
      resultText = "You are average";
    } else if (totalScore == 0) {
      resultText = "You lose";
    } else if (totalScore >= totalQuestions / 2 &&
        totalScore < totalQuestions) {
      resultText = "You done a well";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resetPhrase,
            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Text(
            'You Score is $totalScore',
            style: const TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(
              onPressed: restartGame,
              child: const Text(
                'Restart',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

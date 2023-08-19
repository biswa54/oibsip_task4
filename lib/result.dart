import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final VoidCallback restart;
  final int totalScore;

  Result(this.restart, this.totalScore);

  String getResultPhrase(int totalScore) {
    if (totalScore >= 30) {
      return 'You did great! \n Score: $totalScore';
    } else if (totalScore >= 20) {
      return 'Not bad! \nScore: $totalScore';
    } else {
      return 'Better luck next time.\n Score: $totalScore';
    }
  }

  @override
  Widget build(BuildContext context) {
    String resultPhrase = getResultPhrase(totalScore);

    return Container(
      width: double.infinity,
      child: Column(
        children: [
          Center(
            child: Text(
              resultPhrase,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: TextButton(onPressed: restart, child: Text('Try Again')),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int count;
  final Function answerQuestion;
  final List<Map<String, Object>> content;

  Quiz(this.count, this.content, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          content[count]['questiontext']! as String,
        ),
        ...(content[count]['questionanswer']! as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            () => answerQuestion(answer['score'] as int),
            answer['text'] as String,
          );
        }).toList(),
      ],
    );
  }
}

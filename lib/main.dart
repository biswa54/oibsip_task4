import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myApp();
  }
}

class myApp extends State<App> {
  var content = const [
    {
      'questiontext': 'tell me your favourite colour ',
      'questionanswer': [
        {'text': 'red', 'score': 10},
        {'text': 'blue', 'score': 0},
        {'text': 'green', 'score': 0}
      ]
    },
    {
      'questiontext': 'tell me the smallest animal',
      'questionanswer': [
        {'text': 'dog', 'score': 0},
        {'text': 'ant', 'score': 10},
        {'text': 'cat', 'score': 0}
      ],
    },
    {
      'questiontext': 'tell me the largest country',
      'questionanswer': [
        {'text': 'India', 'score': 0},
        {'text': 'russia', 'score': 10},
        {'text': 'china', 'score': 0}
      ],
    }
  ];
  var count = 0;
  var total_score = 0;
  void resart() {
    setState(() {
      count = 0;
      total_score = 0;
    });
  }

  void answerQuestion(int score) {
    total_score += score;
    setState(() {
      count = count + 1;
    });

    print('answered');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: count < content.length
            ? Quiz(count, content, answerQuestion)
            : Result(resart, total_score),
      ),
    );
  }
}

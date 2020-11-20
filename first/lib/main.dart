import 'package:flutter/material.dart';
import 'quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
    throw UnimplementedError();
  }
}

class _MyAppState extends State<MyApp> {
  var _totalScore = 0;
  int _questionIndex = 0;
  static const _questions = [
    {
      'questionText': "What's your favorite color?",
      'answers': [
        {'text': 'Black', 'score': 3},
        {'text': 'red', 'score': 2},
        {'text': 'blue', 'score': 1},
        {'text': 'white', 'score': 5},
      ],
    },
    {
      'questionText': "What's your favorite Animal?",
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 2},
        {'text': 'Elephant', 'score': 1},
        {'text': 'Lion', 'score': 5},
      ],
    },
  ];
  void _answerQuestion(int score) {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_questions, _answerQuestion, _questionIndex)
            : Center(
                child: Text('You did it'),
              ),
      ),
    );
    throw UnimplementedError();
  }
}

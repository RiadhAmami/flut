import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(this.questions, this.answerQuestion, this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((e) {
            return Answer(() => answerQuestion(e['score']), e['text']);
          }).toList()
        ],
      ),
    );
  }
}

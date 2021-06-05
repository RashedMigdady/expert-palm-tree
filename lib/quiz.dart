import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String , Object>> question;
  final int questionIndex;
  final Function()? answerQuestion;

  Quiz(this.question , this.answerQuestion ,this.questionIndex );

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(question[questionIndex]['questionText']),
      ...(question[questionIndex]['answers'] as List<String>)
          .map((ans) {
        return Answer(answerQuestion, ans);
      }).toList(),
    ]);
  }
}

//import 'dart:html';

import 'package:app02/quiz.dart';
import 'package:app02/result.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
    });
  }

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print("chosen answer");
    print(_questionIndex);
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s your favorite Color?',
      'answers': ["Red", "Black", "Blue", "Green"]
    },
    {
      'questionText': 'What\'s your favorite Animal?',
      'answers': ["Tiger", "Bird", "Sneak", "Lion"]
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': ["Mohammad", "Ali", "Khalid", "Jameel"]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Quiz App"),
          ),
          body: Container(
              //width: double.infinity,
              child: _questionIndex < _question.length
                  ? Quiz(_question, answerQuestion, _questionIndex)
                  : Center(
                    child: Result(_resetQuiz),
                  ))),
    );
  }
}

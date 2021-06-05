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

  void answerQuestion(){
    if (_questionIndex == 2)
      _questionIndex = -1;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print("chosen answer");
    print(_questionIndex);
  }

  final List<Map<String,Object>> _question = [
    {
      'questionText':'What\'s your favorite Color?',
      'answers':["Red" , "Black" , "Blue" , "Green"]
    },
    {
      'questionText':'What\'s your favorite Animal?',
      'answers':["Tiger" , "Bird" , "Sneak" , "Lion"]
    },
    {
      'questionText':'What\'s your favorite instructor?',
      'answers':["Moh" , "Ali" , "Khalid" , "Jameel"]
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
            child: Column(children: <Widget>[
              Question(_question[_questionIndex]['questionText']),

              ...(_question[_questionIndex]['answers'] as List<String>).map((ans){
                return Answer(answerQuestion , ans);
                }).toList(),



            ]),
          )),
    );
  }
}

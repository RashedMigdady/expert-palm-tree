import 'package:flutter/material.dart';
import 'question.dart';



main(){
  runApp(MyApp());
}


class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _questionIndex = 0 ;

  final _question = [
    'What\'s your favorite Color?',
    'What\'s your favorite Animal?'

  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),

        ),
        body: Container(
          child : Question(_question[1]),

        ),
      ),
    );
  }
}

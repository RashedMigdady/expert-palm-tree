import 'package:flutter/material.dart';

class Question extends StatelessWidget {

  final questionText ;

  const Question( this.questionText);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text(questionText ,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final int questionIndex;
  final List<Map<String, Object>> questions;
  final Function answerQuestion;

  Quiz(
      {required this.answerQuestion,
      required this.questionIndex,
      required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          // question.elementAt(_questionIndex), use any of this method to call list data
          questions[questionIndex]['question'] as String,
        ),
        ...(questions[questionIndex]['options'] as List<String>).map((answer) {
          //....spread operator take the  list annd pull all the values out of it and add them to surrounding list as individual values
          return Answer(() {
            if (answer == questions[questionIndex]['answer']) {
              answerQuestion(1);
            } else {
              answerQuestion(0);
            }
          }, answer);
        }).toList(),
      ],
    );
  }
}

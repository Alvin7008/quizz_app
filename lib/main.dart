import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  var _questionIndex = 0;

  var question = [
    'What\'s your favorite color?', //the backslash is used to ignore the single quote '.
    'What\'s your fovorite animal?',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          children: [
            Question(
              // question.elementAt(_questionIndex), use any of this method to call list data
              question[_questionIndex],
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer 1'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer 2'),
            ),
            ElevatedButton(
              onPressed: _answerQuestion,
              child: const Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}

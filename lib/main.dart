import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favorite color?', //the backslash is used to ignore the single quote '.
      'What\'s your fovorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text('Question 1'),
            const ElevatedButton(
              onPressed: null,
              child: Text('Answer 1'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Answer 2'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}

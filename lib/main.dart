import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //
  var _totalScore = 0;

  void _answerQuestion(int score) {
    // print(" Score " + score.toString());
    // print("Totalms cr " + _totalScore.toString());
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
  }

  void restartGame() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  var _questionIndex = 0;

  // var question = [
  //   'What\'s your favorite color?', //the backslash is used to ignore the single quote '.
  //   'What\'s your fovorite animal?',
  // ];

  final _questions = const [
    {
      "question": "What is the capital of France?",
      "options": ["Berlin", "Paris", "Madrid", "Rome"],
      "answer": "Paris"
    },
    {
      "question": "What is the largest country in the world?",
      "options": ["United States", "China", "Russia", "India"],
      "answer": "Russia"
    },
    {
      "question": "What is the currency of Japan?",
      "options": ["Yen", "Won", "Baht", "Yuan"],
      "answer": "Yen"
    },
    {
      "question": "Who is the author of The Great Gatsby?",
      "options": [
        "F. Scott Fitzgerald",
        "Ernest Hemingway",
        "John Steinbeck",
        "Toni Morrison"
      ],
      "answer": "F. Scott Fitzgerald"
    },
    {
      "question": "What is the capital of Australia?",
      "options": ["Sydney", "Melbourne", "Canberra", "Brisbane"],
      "answer": "Canberra"
    },
    {
      "question": "What is the largest ocean in the world?",
      "options": ["Atlantic", "Arctic", "Indian", "Pacific"],
      "answer": "Pacific"
    },
    {
      "question": "What is the chemical symbol for gold?",
      "options": ["Ag", "Au", "Cu", "Fe"],
      "answer": "Au"
    },
    {
      "question": "What is the smallest planet in our solar system?",
      "options": ["Mercury", "Venus", "Mars", "Pluto"],
      "answer": "Mercury"
    },
    {
      "question": "Who painted the Mona Lisa?",
      "options": [
        "Leonardo da Vinci",
        "Vincent van Gogh",
        "Pablo Picasso",
        "Michelangelo"
      ],
      "answer": "Leonardo da Vinci"
    },
    {
      "question": "What is the national animal of Canada?",
      "options": ["Beaver", "Moose", "Polar bear", "Bison"],
      "answer": "Beaver"
    },
    {
      "question": "What is the largest bird in the world?",
      "options": ["Eagle", "Ostrich", "Flamingo", "Pelican"],
      "answer": "Ostrich"
    },
    {
      "question": "What is the capital of Egypt?",
      "options": ["Cairo", "Alexandria", "Luxor", "Aswan"],
      "answer": "Cairo"
    },
    {
      "question": "Who discovered penicillin?",
      "options": [
        "Alexander Fleming",
        "Marie Curie",
        "Thomas Edison",
        "Isaac Newton"
      ],
      "answer": "Alexander Fleming"
    },
    {
      "question": "What is the largest desert in the world?",
      "options": ["Sahara", "Gobi", "Arabian", "Antarctic"],
      "answer": "Sahara"
    },
    {
      "question": "What is the capital of Brazil?",
      "options": ["Rio de Janeiro", "Brasília", "São Paulo", "Salvador"],
      "answer": "Brasília"
    },
    {
      "question": "Who wrote the play Romeo and Juliet?",
      "options": [
        "William Shakespeare",
        "Oscar Wilde",
        "Samuel Beckett",
        "Tennessee Williams"
      ],
      "answer": "William Shakespeare"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, restartGame, _questions.length),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String answerText;
  Answer(this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: null,
        // style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all(Colors.amber),
        //   ),
        child: Text(answerText),
      ),
    );
  }
}

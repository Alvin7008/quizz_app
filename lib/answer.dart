import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //
  final VoidCallback selectHandler;
  final String answerText;

  //either use Function or VoidCallback(A function that doesn't return anything)
  Answer(
    this.selectHandler,
    this.answerText,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(5.0),
      child: ElevatedButton(
        onPressed: selectHandler,
        style: ButtonStyle(
          foregroundColor:
              MaterialStateProperty.all(Colors.white70), //to set text color
        ),
        // style: ButtonStyle(             //giving bg color to elevated button
        //     backgroundColor: MaterialStateProperty.all(Colors.amber),
        //   ),
        child: Text(
          answerText,
        ),
      ),
    );
  }
}

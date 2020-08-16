import 'package:flutter/material.dart';

class StartQuizButton extends StatelessWidget {
  // final String questionText;
  // Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: RaisedButton(
          child: Text('Start the Quiz!'),
          onPressed: null,
        ));
  }
}

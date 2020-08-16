import 'package:driving_quiz/start_quiz_button.dart';
import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MaterialApp(
    title: 'Driving Quiz',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _startQuiz() {
    setState(() {
      _questionIndex += 1;
    });
    //get questions
    //render first question
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = ["question 1", "question 2", "question 3", "question 4"];
    //return parent container app
    return Scaffold(
      appBar: AppBar(
          title: Text('Driving Quiz'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation Menu',
            onPressed: null,
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search), tooltip: 'Search', onPressed: null)
          ]),
      body: Column(
        //this should be like a "quiz area"
        //send init state to this child first, which then will conditionally render the start quiz button
        children: [StartQuizButton()],
      ),
    );
  }
}

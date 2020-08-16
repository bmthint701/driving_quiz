import 'package:flutter/material.dart';

class QuestionArea extends StatefulWidget {
  QuestionArea({Key key, this.questions}) : super(key: key);
  final List<Question> questions;
}

class Question {
  const Question({this.name});
  final String name;
}

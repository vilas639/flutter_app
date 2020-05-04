import 'package:flutter/material.dart';

import 'Ans.dart';
import 'Questions.dart';



class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return Ans(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}

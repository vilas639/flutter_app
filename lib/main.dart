import 'package:flutter/material.dart';

import 'features/number_trivia/presentation/widgets/Quiz.dart';
import 'features/number_trivia/presentation/widgets/Result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _qustn = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  var _changeqsn = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _changeqsn = 0;
      _totalScore = 0;
    });
  }

  void _answerbutn(int score) {
    _totalScore += score;

    setState(() {
      _changeqsn = _changeqsn + 1;
    });

    print(_changeqsn);
    if (_changeqsn < _qustn.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
       debugShowCheckedModeBanner: false,
        home: Scaffold(
      appBar: AppBar(title: Text('vilas')),
      body: _changeqsn < _qustn.length
          ? Quiz(
                answerQuestion: _answerbutn,
                questionIndex: _changeqsn,
                questions: _qustn,
              )

          :  Result(_totalScore, _resetQuiz),
    ));
  }
}

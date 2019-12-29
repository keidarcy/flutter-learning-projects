import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'Whats\' your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'White', 'score': 4},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 2},
        {'text': 'Pink', 'score': 1}
      ],
    },
    {
      'questionText': 'Whats\' your favorite animal?',
      'answers': [
        {'text': 'Tiger', 'score': 5},
        {'text': 'Elephent', 'score': 4},
        {'text': 'Mouse', 'score': 3},
        {'text': 'Horse', 'score': 2},
        {'text': 'Cow', 'score': 1}
      ],
    },
    {
      'questionText': 'Whats\' your favorite language?',
      'answers': [
        {'text': 'Python', 'score': 5},
        {'text': 'Dart', 'score': 4},
        {'text': 'C#', 'score': 3},
        {'text': 'Swift', 'score': 2},
        {'text': 'PHP', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      print('we have more');
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Quiz App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyappState();
  }
}

class _MyappState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': ['Elephant', 'Rabit', 'Dog', 'Cow']
    },
    {
      'questionText': 'Who\'s your favourite cricketer?',
      'answers': ['Sachin', 'Ponting', 'Rohit', 'Smith']
    },
    {
      'questionText': 'Who\'s your favourite footballer?',
      'answers': ['Ronaldo', 'Messi', 'Sidan', 'Naymer']
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
      // if (_questionIndex >= questions.length) _questionIndex = 0;
    });

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My QA App'),
        ),
        body: _questionIndex >= _questions.length
            ? Center(
                child: Text('No more Data'),
              )
            : Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              ),
      ),
    );
  }
}

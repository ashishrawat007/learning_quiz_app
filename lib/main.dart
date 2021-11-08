import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart' ;

void main() => runApp(const MyApp());


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
          {
            'questionText' : 'What is your favourite color ?',
            'answers' : [ { 'text' : 'green' , 'score' : 10},
                          { 'text' : 'blue' , 'score' : 5},
                          { 'text' : 'red' , 'score' : 8},
                          { 'text' : 'yellow' , 'score' : 15},
            ]
          },
          {
            'questionText' : 'What is your Fav animal ?',
            'answers' : [ { 'text' : 'cow' , 'score' : 10},
              { 'text' : 'dog' , 'score' : 5},
              { 'text' : 'cat' , 'score' : 8},
              { 'text' : 'tiger' , 'score' : 15}
            ]
          },
          {
            'questionText' : 'What is your fav hero ?',
            'answers' : [
              { 'text' : 'salman ' , 'score' : 10},
              { 'text' : 'tom cruze' , 'score' : 5},
              { 'text' : 'robert donkey' , 'score' : 8},
              { 'text' : 'sunny keval' , 'score' : 15}]
          }
  ];
  var _questionIndex = 0 ;
  var _totalScore = 0 ;

  void _resetQuiz()
  {
    setState(() {
      _questionIndex = 0 ;
      _totalScore = 0 ;
    });
  }

  void _answerQuestion(int score)
  {

    _totalScore += score ;
    setState(() {
      _questionIndex += 1 ;
    });
    print(_questionIndex);
    if(_questionIndex < _questions.length)
    {

    }
  }

  @override
  Widget build(BuildContext context)
  {


    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(
        appBar: AppBar(
            title:  Text("Quiz "),
          backgroundColor: Colors.black,
        ),
        body:  _questionIndex < _questions.length
            ?  Quiz(
                 answerQuestion: _answerQuestion,
                 questionIndex: _questionIndex,
                 questions: _questions,
        ) : Result(_totalScore,_resetQuiz)

      ),
    );
  }
}


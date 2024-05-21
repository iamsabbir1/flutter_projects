import 'package:flutter/material.dart';
import 'package:quizz_app/questions.dart';
import './start_screen.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/result_screen.dart';

class Quiz extends StatefulWidget
{
  const Quiz({super.key});


  @override
  State<Quiz> createState()
  {
    return _Quiz();
  }
}

//this is comment

class _Quiz extends State<Quiz>
{

  List<String> selectedAnswers = [];

  var activeScreen = "start_screen";

  void switchScreen()
  {
      setState((){
        activeScreen = "questions";
        screenWidget = QuestionScreen(onSelected: chooseAnswer);
      });
    
  }

  void switchQuestion()
  {
    setState((){
      activeScreen = "questions";
      screenWidget = QuestionScreen(onSelected: chooseAnswer);
    });
  }
  void chooseAnswer(String answer)
  {
    selectedAnswers.add(answer);

    if(selectedAnswers.length == questions.length)
    {
      print(selectedAnswers.length);                          
      setState(() {
        activeScreen = 'result_screen';
        screenWidget = ResultScreen(startQuiz:  switchQuestion,
        chooseAnswer: selectedAnswers);
      });
    }
  }
  
  Widget? screenWidget;
  @override
  void initState()
  {
    super.initState();
    screenWidget = StartScreen(switchScreen);
  }

  
  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blueGrey,
              Colors.green,
            ],
            ),
          ),
          child:  screenWidget,
        ),
      ),
    );  
  }
}
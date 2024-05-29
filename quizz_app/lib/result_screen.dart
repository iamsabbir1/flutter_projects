import 'package:flutter/material.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:quizz_app/questions_summary.dart';

class ResultScreen extends StatelessWidget
{
  const ResultScreen({required this.startQuiz,super.key, required this.chooseAnswer});
  
  final void Function() startQuiz;
  final List<String>? chooseAnswer;


 List<Map<String,Object>> getSummary()
 {
    List<Map<String,Object>> summary = [];

    for(var i=0;i < chooseAnswer!.length;i++)
    {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chooseAnswer![i],
      });
    }
    return summary;
 }


  @override
  Widget build(BuildContext context)
  {

    final summaryData = getSummary();

    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data){
      return data['correct_answer']==data['user_answer'];
    }).length;

    return  SizedBox(
      width: double.infinity,
      child: Container(
          margin: const EdgeInsets.all(40),
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                    Text('You answered $numCorrectQuestions out of $numTotalQuestions correctly!',style: const TextStyle(fontSize: 25),),
                    const SizedBox(
                      height: 30,
                    ),
                    QuestionsSummary(summaryData),
                    const SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      onPressed: startQuiz,
                      child: const Text('Restart',style: TextStyle(color: Colors.white,fontSize: 17)),
                    )
              ],
          ),
      ),
    );
  }
}
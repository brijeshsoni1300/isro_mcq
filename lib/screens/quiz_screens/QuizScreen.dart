import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isro_mcq/controllers/questions_controller.dart';
import 'package:isro_mcq/models/question.dart';

class QuizScreen extends StatelessWidget {
  String? topic = "";
  String? difficulty = "";
  QuizScreen({Key? key,required String? topic,required String? difficulty}) : super(key: key);


  QuestionController questionController = Get.find();


  @override
  Widget build(BuildContext context) {
    print("difficulty: ${difficulty}");
    print("topic: ${topic}");
    List<Question> questionsList = questionController.questionList.where((element) => (element.difficulty == difficulty && element.topic==topic)).toList();
    print("questionlist length is : ${questionsList.length}");
    for(int i=0; i<questionsList.length; i++){
      print("question: ${questionsList[i].difficulty}");
    }
    return Scaffold(
      appBar: AppBar(title: Text("Quiz"),),

    );
  }
}



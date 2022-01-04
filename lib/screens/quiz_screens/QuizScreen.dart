import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isro_mcq/controllers/questions_controller.dart';
import 'package:isro_mcq/controllers/quiz_controller.dart';
import 'package:isro_mcq/models/question.dart';

class QuizScreen extends StatefulWidget {
  String? topic;
  String? difficulty;

  QuizScreen(
      {Key? key, required String? this.topic, required String? this.difficulty})
      : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;

  QuestionController questionController = Get.find();
  // QuizController quizController = Get.find();
  QuizController quizController = Get.put(QuizController());
  @override
  Widget build(BuildContext context) {
    // print("difficulty: ${difficulty}");
    // print("topic: ${topic}");
    List<Question> questionsList = questionController.questionList
        .where((element) => (element.difficulty == widget.difficulty &&
            element.topic == widget.topic))
        .toList();
    // print("questionlist length is : ${questionsList.length}");
    // for (int i = 0; i < questionsList.length; i++) {
    //   print("question: ${questionsList[i].difficulty}");
    // }
    print("currentQuestion index: ${currentQuestionIndex}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Center(
        child: currentQuestionIndex >= 10
            ?
        Container(
          child: Column(
            children: [
              Text("You Got ${quizController.marks} out of ${quizController.total} ", style: TextStyle(
                  fontSize: 32
              ),),
              ElevatedButton(onPressed: (){
                Get.delete<QuizController>();
                Navigator.pop(context);
              }, child: Text("Lets go to the topic page") )
            ],
          ),
        ): Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${questionsList[currentQuestionIndex].question}",
              style: TextStyle(fontSize: 32),
            ),
            ElevatedButton(
                onPressed: () {
                  quizController
                      .updateMarks(questionsList[currentQuestionIndex].option1);
                  setState(() {

                      currentQuestionIndex++;

                  });
                },
                child: Text("option1")),
            ElevatedButton(
                onPressed: () {
                  quizController
                      .updateMarks(questionsList[currentQuestionIndex].option2);
                  setState(() {

                      currentQuestionIndex++;

                  });
                },
                child: Text("option2")),
            ElevatedButton(
                onPressed: () {
                  quizController
                      .updateMarks(questionsList[currentQuestionIndex].option3);
                  setState(() {

                      currentQuestionIndex++;

                  });
                },
                child: Text("option3")),
            ElevatedButton(
                onPressed: () {

                  quizController
                      .updateMarks(questionsList[currentQuestionIndex].option4);
                  setState(() {

                      currentQuestionIndex++;

                  });
                },
                child: Text("option4")),

          ],
        ),
      ),
    );
  }
}

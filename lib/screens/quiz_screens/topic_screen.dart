import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isro_mcq/controllers/questions_controller.dart';
import 'package:isro_mcq/controllers/quiz_controller.dart';

import 'QuizScreen.dart';

class TopicScreen extends StatefulWidget {
  TopicScreen({Key? key}) : super(key: key);

  @override
  State<TopicScreen> createState() => _TopicScreenState();
}

class _TopicScreenState extends State<TopicScreen> {
  String difficulty = "EASY";
  QuestionController quesionController = Get.put(QuestionController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Corner"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: difficulty == "EASY"
                        ? ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                          )
                        : ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blueGrey),
                          ),
                    onPressed: () {
                      setState(() {
                        difficulty = "EASY";
                      });
                    },
                    child: Text("Easy")),
                ElevatedButton(
                    style: difficulty == "MID"
                        ? ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                          )
                        : ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blueGrey),
                          ),
                    onPressed: () {
                      setState(() {
                        difficulty = "MID";
                      });
                    },
                    child: Text("Mid")),
                ElevatedButton(
                    style: difficulty == "HARD"
                        ? ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.green),
                          )
                        : ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.blueGrey),
                          ),
                    onPressed: () {
                      setState(() {
                        difficulty = "HARD";
                      });
                    },
                    child: Text("Hard")),
              ],
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(
                      topic: "TOPIC1",
                      difficulty: difficulty,
                    ),
                  ),
                );
              }),
              child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.red,
                  child: Center(child: Text("TOPIC1"))),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(
                      topic: "TOPIC2",
                      difficulty: difficulty,
                    ),
                  ),
                );
              }),
              child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.red,
                  child: Center(child: Text("TOPIC2"))),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(
                      topic: "TOPIC3",
                      difficulty: difficulty,
                    ),
                  ),
                );
              }),
              child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.red,
                  child: Center(child: Text("TOPIC3"))),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuizScreen(
                      topic: "TOPIC4",
                      difficulty: difficulty,
                    ),
                  ),
                );
              }),
              child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.red,
                  child: Center(child: Text("TOPIC4"))),
            ),
          ],
        ),
      ),
    );
  }
}

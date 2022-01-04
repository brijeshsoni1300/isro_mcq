import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:isro_mcq/controllers/knowledge_data_controller.dart';
import 'package:isro_mcq/screens/knowledges_screens/learn_screen.dart';
import 'package:isro_mcq/screens/quiz_screens/topic_screen.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final KnowledgeDataController knowledgeDataController =
      Get.put(KnowledgeDataController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ISRO"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Learn()),
                );
              },
              child: Container(
                  height: 200,
                  width: 200,
                  child: Center(child: Text("Learn")),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                        color: Colors.black,
                        width: 8,
                      ),
                      borderRadius: BorderRadius.circular(20))),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TopicScreen()),
                );
              },
              child: Container(
                  height: 200,
                  width: 200,
                  child: Center(child: Text("Test")),
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(
                        color: Colors.black,
                        width: 8,
                      ),
                      borderRadius: BorderRadius.circular(20))),
            )
          ],
        ),
      ),
    );
  }
}

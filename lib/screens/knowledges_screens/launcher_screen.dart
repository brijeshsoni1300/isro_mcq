import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isro_mcq/controllers/knowledge_data_controller.dart';

class LauncherScreen extends StatelessWidget {
  LauncherScreen({Key? key}) : super(key: key);
  final KnowledgeDataController knowledgeDataController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Launchers"),
        ),
        body: Obx(() => ListView.builder(
              itemCount: knowledgeDataController.launchersList.value.length,
              itemBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: ListTile(
                        tileColor: Colors.amberAccent,
                        title: Text(
                            "${knowledgeDataController.launchersList.value[index].id}")));
              },
            )));
  }
}

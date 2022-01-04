import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isro_mcq/controllers/knowledge_data_controller.dart';

class SpaceCraftScreen extends StatelessWidget {
  SpaceCraftScreen({Key? key}) : super(key: key);
  final KnowledgeDataController knowledgeDataController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("SpaceCraft"),
        ),
        body: Obx(() => ListView.builder(
              itemCount: knowledgeDataController.spacecraftList.value.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    tileColor: Colors.amberAccent,
                    leading: Text(
                        "${knowledgeDataController.spacecraftList.value[index].id}"),
                    title: Text(
                        "${knowledgeDataController.spacecraftList.value[index].name}"),
                  ),
                );
              },
            )));
  }
}

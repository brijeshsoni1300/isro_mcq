import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isro_mcq/controllers/knowledge_data_controller.dart';

class CenterScreen extends StatelessWidget {
  CenterScreen({Key? key}) : super(key: key);
  final KnowledgeDataController knowledgeDataController = Get.find();

  @override
  Widget build(BuildContext context) {
    debugPrint(
        "knowldege data controller centerlist: ${knowledgeDataController.centerList.value} ");
    return Scaffold(
        appBar: AppBar(
          title: Text("Centers"),
        ),
        body: Obx(() => ListView.builder(
              itemCount: knowledgeDataController.centerList.value.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ListTile(
                    tileColor: Colors.amberAccent,
                    subtitle: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                            "${knowledgeDataController.centerList.value[index].place}"),
                        Text(
                            " ${knowledgeDataController.centerList.value[index].state}")
                      ],
                    ),
                    leading: Text(
                        "${knowledgeDataController.centerList.value[index].id}"),
                    title: Text(
                        "${knowledgeDataController.centerList.value[index].name}"),
                  ),
                );
              },
            )));
  }
}

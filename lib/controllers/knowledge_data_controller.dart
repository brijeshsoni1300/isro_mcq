import 'package:get/state_manager.dart';
import 'package:isro_mcq/models/centers.dart';
import 'package:isro_mcq/models/customer_satellites.dart';
import 'package:isro_mcq/models/launchers.dart';
import 'package:isro_mcq/models/spacecraft.dart';
import 'package:isro_mcq/services/knowledge_services.dart';

class KnowledgeDataController extends GetxController {
  var centerList = <Center>[].obs;
  var spacecraftList = <SpaceCraft>[].obs;
  var launchersList = <Launcher>[].obs;
  var customerSatellitesList = <CustomerSatellite>[].obs;
  var knowledgeServices = KnowledgeService();

  void onInit() {
    fetchCenter();
    fetchSpaceCraft();
    fetchLaunchers();
    fetchCustomerSatellites();
    super.onInit();
  }

  void fetchCenter() async {
    try {
      var centers = await knowledgeServices.fetchCenters();
      if (centers != null) {
        centerList.value = centers as List<Center>;
      }
    } finally {}
  }

  void fetchSpaceCraft() async {
    try {
      var SpaceCrafts = await knowledgeServices.fetchSpaceCrafts();
      if (SpaceCrafts != null) {
        spacecraftList.value = SpaceCrafts as List<SpaceCraft>;
      }
    } finally {}
  }

  void fetchLaunchers() async {
    try {
      var Launchers = await knowledgeServices.fetchLaunchers();
      if (Launchers != null) {
        launchersList.value = Launchers as List<Launcher>;
      }
    } finally {}
  }

  void fetchCustomerSatellites() async {
    try {
      var CustomerSatellites =
          await knowledgeServices.fetchCustomerSatellites();
      if (CustomerSatellites != null) {
        customerSatellitesList.value =
            CustomerSatellites as List<CustomerSatellite>;
      }
    } finally {}
  }
}

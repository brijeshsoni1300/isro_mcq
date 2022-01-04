import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:isro_mcq/models/centers.dart';
import 'package:isro_mcq/models/customer_satellites.dart';
import 'package:isro_mcq/models/launchers.dart';
import 'package:isro_mcq/models/spacecraft.dart';

class KnowledgeService {
  var client = http.Client();

  Future<List<Center>?> fetchCenters() async {
    var response =
        await client.get(Uri.parse('https://isro.vercel.app/api/centres'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      Map<String, dynamic> map = json.decode(jsonString);
      List<dynamic> data = map["centres"];
      List<Center> listOfCenter = data.map((c) {
        Center cc = Center(
            id: c["id"], name: c["name"], place: c["Place"], state: c["State"]);
        return cc;
      }).toList();
      return listOfCenter;
    } else {
      //show error message
      return null;
    }
  }

  Future<List<SpaceCraft>?> fetchSpaceCrafts() async {
    var response =
        await client.get(Uri.parse('https://isro.vercel.app/api/spacecrafts'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      Map<String, dynamic> map = json.decode(jsonString);
      List<dynamic> data = map["spacecrafts"];
      List<SpaceCraft> listOfSpaceCraft = data.map((c) {
        SpaceCraft cc = SpaceCraft(id: c["id"], name: c["name"]);
        return cc;
      }).toList();
      return listOfSpaceCraft;
    } else {
      //show error message
      return null;
    }
  }

  Future<List<Launcher>?> fetchLaunchers() async {
    var response =
        await client.get(Uri.parse("https://isro.vercel.app/api/launchers"));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      Map<String, dynamic> map = json.decode(jsonString);
      List<dynamic> data = map["launchers"];
      List<Launcher> listOfLaunchers = data.map((l) {
        Launcher lau = Launcher(id: l["id"]);
        return lau;
      }).toList();
      return listOfLaunchers;
    } else {
      return null;
    }
  }

  Future<List<CustomerSatellite>?> fetchCustomerSatellites() async {
    var response = await client
        .get(Uri.parse("https://isro.vercel.app/api/customer_satellites"));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      Map<String, dynamic> map = json.decode(jsonString);
      List<dynamic> data = map["customer_satellites"];
      List<CustomerSatellite> listOfCustomerSatellites = data.map((c) {
        CustomerSatellite cs = CustomerSatellite(
            id: c["id"].toString(),
            country: c["country"].toString(),
            launchDate: c["launch_date"].toString(),
            launcher: c["launcher"].toString(),
            mass: c["mass"].toString());
        return cs;
      }).toList();
      return listOfCustomerSatellites;
    } else {
      return null;
    }
  }
}

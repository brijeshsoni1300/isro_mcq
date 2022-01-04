import 'package:flutter/material.dart';

import 'package:isro_mcq/screens/knowledges_screens/centers_screen.dart';
import 'package:isro_mcq/screens/knowledges_screens/customer_satellite_screen.dart';

import 'launcher_screen.dart';
import 'spacecraft_screen.dart';

class Learn extends StatelessWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Knowledge Corner"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SpaceCraftScreen()),
                );
              }),
              child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.red,
                  child: Center(child: Text("SpaceCraft"))),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LauncherScreen()),
                );
              }),
              child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.red,
                  child: Center(child: Text("Launchers"))),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CustomerSatelliteScreen()),
                );
              }),
              child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.red,
                  child: Center(child: Text("Customer Satellites"))),
            ),
            GestureDetector(
              onTap: (() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CenterScreen()),
                );
              }),
              child: Container(
                  height: 100,
                  width: 150,
                  color: Colors.red,
                  child: Center(child: Text("Centres"))),
            )
          ],
        ),
      ),
    );
  }
}

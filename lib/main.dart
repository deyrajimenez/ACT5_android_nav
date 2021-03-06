import 'package:flutter/material.dart';
import 'package:jimenez/paginas_tabs/first.dart';
import 'package:jimenez/paginas_tabs/second.dart';
import 'package:jimenez/paginas_tabs/third.dart';

void main() {
  runApp(MaterialApp(
      // Title
      title: "Using Tabs",
      // Home
      home: MiCasa()));
} //Fin de Main

class MiCasa extends StatefulWidget {
  @override
  MiCasaState createState() => MiCasaState();
} //Fin 1ra clase

class MiCasaState extends State<MiCasa> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  } //fin de iniciar estado

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Bottom Navigation Bar - Jimenez"),
        // Set the background color of the App Bar
        backgroundColor: Color(0xFFFF80AB),
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[
          FirstTab(),
          SecondTab(),
          ThirdTab()
        ],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Color(0xFFFF80AB),
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.account_circle),
            ),
            Tab(
              icon: Icon(Icons.add_a_photo),
            ),
            Tab(
              icon: Icon(Icons.add_circle_outline),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  } //Fin de widget
} //

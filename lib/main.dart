import 'package:auto_size_text/auto_size_text.dart';
import 'package:beach_parking/datamanager.dart';
/**
 * Beach parking application prototype created for Town of Fort Myers Beach.
 * Does not contain functionality but demonstrates basic design and elements.
 * 
 * Author: Devin Arena
 * Version: 1.0
 * Date: 4/2/2021
 */
import 'package:flutter/material.dart';

import 'beach_card.dart';

// Runs the actual application
void main() {
  DataManager.init();

  runApp(BeachApp());
}

/**
 * Stateless main app widget, all other widgets are children
 * of this one, contains main information about the app such as
 * theme data, title, and home widget.
 */
class BeachApp extends StatelessWidget {
  /**
   * Builds the MaterialApp widget containing title,
   * theme data and home page widget.
   * 
   * @param context - the BuildContext of the application
   * @return main homepage widget
   */
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Beach Parking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark
      ),
      home: HomePage(),
    );
  }
}

/**
 * HomePage stateful widget, wrapper for the homepage state.
 * 
 * Author: Devin Arena
 * Version: 1.0
 * Date: 4/2/2021
 */
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

/**
 * HomePage state, contains main scaffolding for the application.
 * 
 * Author: Devin Arena
 * Version: 1.0
 * Date: 4/2/2021
 */
class _HomePageState extends State<HomePage> {

  @override
  void dispose() {
    DataManager.dispose();
    super.dispose();
  }

/**
 * Builds the main application interface, a list of all beach accesses
 * displayed as cards that can be pressed to view more information.
 * 
 * @param context the BuildContext to use
 * @return the main widget
 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText("Beach Parking", style: TextStyle(fontSize: 28)),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(DataManager.beaches.length, (index) {
              return BeachCard(DataManager.beaches[index]);
            }),
          ),
        ),
      )
    );
  }
}
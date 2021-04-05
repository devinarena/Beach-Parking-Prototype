import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'beach.dart';

/**
 * BeachInfo widget, displays all information about a beach.
 * 
 * Author: Devin Arena
 * Version: 1.0
 * Date: 4/2/2021
 */
class BeachInfo extends StatefulWidget {
  final Beach _beach; // beach to display info about

  BeachInfo(this._beach);

  @override
  _BeachInfoState createState() => _BeachInfoState();
}

/**
 * BeachInfo state, displays all information about a beach.
 * Uses information stored in Beach class and displays it.
 * 
 * Author: Devin Arena
 * Version: 1.0
 * Date: 4/2/2021
 */
class _BeachInfoState extends State<BeachInfo> {

  /**
   * Builds the beach info state after being pushed onto the navigator.
   * The entire widget is a container with a column of text and image widgets
   * to display information.
   * 
   * @param context the BuildContext to use
   * @return a BeachInfo screen widget
   */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AutoSizeText("${widget._beach.name}", style: TextStyle(fontSize: 24)),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Colors.grey[800], borderRadius: BorderRadius.circular(10)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _buildPage()
            ),
          ),
        ),
      )
    );
  }

  /**
   * Builds the page using widgets to display all beach information.
   * Some info may be null and therefore will not be displayed.
   * 
   * @return a list of widgets (page)
   */
  List<Widget> _buildPage() {
    List<Widget> widgets = [];
    if (widget._beach.imagePath != null)
      widgets.add(
        Container(
          child: Image(image: AssetImage(widget._beach.imagePath), fit: BoxFit.scaleDown),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3),
          ),
        ),
      );
    widgets.add(SizedBox(height: 10));
    widgets.add(AutoSizeText("${widget._beach.name}", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold), maxLines: 1));
    widgets.add(SizedBox(height: 10));
    widgets.add(AutoSizeText("${widget._beach.description}", style: TextStyle(fontSize: 16, color: Colors.grey[400])));
    widgets.add(SizedBox(height: 20));
    widgets.add(
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText("Distance", style: TextStyle(fontSize: 20), maxLines: 1),
          AutoSizeText("${widget._beach.distance} miles", style: TextStyle(fontSize: 20), maxLines: 1),
        ],
      )
    );
    widgets.add(
      Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AutoSizeText("Available Spaces", style: TextStyle(fontSize: 20), maxLines: 1),
          AutoSizeText("${widget._beach.freeSpaces}/${widget._beach.totalSpaces}", style: TextStyle(fontSize: 20), maxLines: 1),
        ],
      )
    );
    if(widget._beach.addressLink != null) {
      widgets.add(SizedBox(height: 20));
      widgets.add(
        RaisedButton(
          onPressed: () => _openSite(),
          child: AutoSizeText("Navigate Here", style: TextStyle(fontSize: 20), maxLines: 1),
        )
      );
    }
    return widgets;
  }

  _openSite() async {
    String url = widget._beach.addressLink;
    if(url.contains("https://")) {
      url = url.substring(8);
    }
    if (await canLaunch("https://$url")) {
      await launch("https://$url");
    }
  }
}
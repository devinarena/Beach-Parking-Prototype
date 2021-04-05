import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'beach.dart';
import 'beach_info.dart';

/**
 * BeachCard state, buttons located on the homepage that 
 * when pressed take you to the beach information screen.
 * Displays the beach name, summary, number of spaces, and
 * distance from the user.
 * 
 * Author: Devin Arena
 * Version: 1.0
 * Date: 4/3/2021
 */
class BeachCard extends StatefulWidget {
  final Beach _beach;

  BeachCard(this._beach);

  @override
  _BeachCardState createState() => _BeachCardState();
}

/**
 * BeachCard state, contains state information for BeachCard.
 * Contains build method to create the widget.
 * 
 * Author: Devin Arena
 * Version: 1.0
 * Date: 4/3/2021
 */
class _BeachCardState extends State<BeachCard> {
  /**
   * Creates the beach card to add to the list on the homepage.
   * 
   * @param context the BuildContext to use
   * @return Widget the BeachCard widget
   */
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: RaisedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => BeachInfo(widget._beach)));
        },
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(color: Color(0xff222222), width: 3),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        color: Color(0xff666666),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AutoSizeText(widget._beach.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), maxLines: 1),
                  AutoSizeText(widget._beach.summary, style: TextStyle(fontSize: 14, color: Colors.grey[400]), maxLines: 5)
                ]
              ),
            ),
            SizedBox(
              width: 10
            ),
            Column(
              children: [
                AutoSizeText("Spaces", style: TextStyle(fontSize: 16), maxLines: 1),
                AutoSizeText("${widget._beach.freeSpaces}/${widget._beach.totalSpaces}", style: TextStyle(fontSize: 16), maxLines: 1),
                SizedBox(height: 10),
                AutoSizeText("${widget._beach.distance} miles", style: TextStyle(fontSize: 16, color: Colors.blue), maxLines: 1),
              ],
            ),
          ],
        )
      )
    );
  }
}
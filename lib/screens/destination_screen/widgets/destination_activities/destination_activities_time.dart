import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/activity_model.dart';

class DestinationActivitiesTime extends StatelessWidget {
  final Activity _activity;

  DestinationActivitiesTime(this._activity);

  Container _buildTime(String text, Color color) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: 70.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      alignment: Alignment.center,
      child: Text(text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        _buildTime(_activity.startTimes[0], Theme.of(context).accentColor),
        SizedBox(width: 10.0),
        _buildTime(_activity.startTimes[1], Theme.of(context).accentColor),
      ],
    );
  }
}

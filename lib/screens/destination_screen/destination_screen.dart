import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/destination_model.dart';
import 'package:flutter_travel_ui/screens/destination_screen/widgets/destination_info/destination_info.dart';
import 'package:flutter_travel_ui/screens/destination_screen/widgets/destination_activities/destination_activities.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  DestinationScreen({this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          DestinationInfo(widget.destination),
          DestinationActivities(widget.destination),
        ],
      ),
    );
  }
}

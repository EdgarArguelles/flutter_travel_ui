import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/destination_model.dart';

class DestinationInfo extends StatelessWidget {
  final Destination _destination;

  DestinationInfo(this._destination);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15.0,
      child: Container(
        height: 120.0,
        width: 200.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '${_destination.activities.length} activities',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
              Text(
                _destination.description,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

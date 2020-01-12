import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/activity_model.dart';
import 'package:flutter_travel_ui/models/destination_model.dart';
import 'package:flutter_travel_ui/screens/destination_screen/widgets/destination_activities/destination_activities_info.dart';

class DestinationActivities extends StatelessWidget {
  final Destination _destination;

  DestinationActivities(this._destination);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
        itemCount: _destination.activities.length,
        itemBuilder: (BuildContext context, int index) {
          Activity activity = _destination.activities[index];
          return Stack(
            children: <Widget>[
              DestinationActivitiesInfo(activity),
              Positioned(
                left: 20.0,
                top: 15.0,
                bottom: 15.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Image(
                    width: 110.0,
                    image: AssetImage(
                      activity.imageUrl,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

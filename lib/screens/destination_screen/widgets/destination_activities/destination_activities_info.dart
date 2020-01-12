import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/activity_model.dart';
import 'package:flutter_travel_ui/screens/destination_screen/widgets/destination_activities/destination_rating.dart';
import 'package:flutter_travel_ui/screens/destination_screen/widgets/destination_activities/destination_activities_time.dart';

class DestinationActivitiesInfo extends StatelessWidget {
  final Activity _activity;

  DestinationActivitiesInfo(this._activity);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
      height: 170.0,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 120.0,
                  child: Text(
                    _activity.name,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '\$${_activity.price}',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'per pax',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              _activity.type,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            DestinationRating(_activity.rating),
            SizedBox(height: 10.0),
            DestinationActivitiesTime(_activity),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_travel_ui/models/destination_model.dart';
import 'package:flutter_travel_ui/screens/destination_screen/widgets/destination_info/destination_image.dart';
import 'package:flutter_travel_ui/screens/destination_screen/widgets/destination_info/destination_navigation.dart';

class DestinationInfo extends StatelessWidget {
  final Destination _destination;

  DestinationInfo(this._destination);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        DestinationImage(_destination),
        DestinationNavigation(),
        Positioned(
          left: 20.0,
          bottom: 20.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                _destination.city,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
              Row(
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.locationArrow,
                    size: 15.0,
                    color: Colors.white70,
                  ),
                  SizedBox(width: 5.0),
                  Text(
                    _destination.country,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          right: 20.0,
          bottom: 20.0,
          child: Icon(
            Icons.location_on,
            color: Colors.white70,
            size: 25.0,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_travel_ui/models/destination_model.dart';

class DestinationImage extends StatelessWidget {
  final Destination _destination;

  DestinationImage(this._destination);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0.0, 2.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          Hero(
            tag: _destination.imageUrl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image(
                height: 180.0,
                width: 180.0,
                image: AssetImage(_destination.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  _destination.city,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.locationArrow,
                      size: 10.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      _destination.country,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

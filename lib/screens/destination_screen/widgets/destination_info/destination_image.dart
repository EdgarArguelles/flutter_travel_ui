import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/destination_model.dart';

class DestinationImage extends StatelessWidget {
  final Destination _destination;

  DestinationImage(this._destination);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0.0, 2.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: Hero(
        tag: _destination.imageUrl,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image(
            image: AssetImage(_destination.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

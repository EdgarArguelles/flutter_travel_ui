import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/hotel_model.dart';

class HotelImage extends StatelessWidget {
  final Hotel _hotel;

  HotelImage(this._hotel);

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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image(
          height: 180.0,
          width: 220.0,
          image: AssetImage(_hotel.imageUrl),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

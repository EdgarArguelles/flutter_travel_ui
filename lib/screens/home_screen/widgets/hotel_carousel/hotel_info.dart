import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/hotel_model.dart';

class HotelInfo extends StatelessWidget {
  final Hotel _hotel;

  HotelInfo(this._hotel);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 15.0,
      child: Container(
        height: 120.0,
        width: 240.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(
                _hotel.name,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1.2,
                ),
              ),
              SizedBox(height: 2.0),
              Text(
                _hotel.address,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 2.0),
              Text(
                '\$${_hotel.price} / night',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

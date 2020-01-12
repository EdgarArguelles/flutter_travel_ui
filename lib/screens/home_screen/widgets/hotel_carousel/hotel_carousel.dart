import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/screens/home_screen/widgets/hotel_carousel/hotel_carousel_header.dart';
import 'package:flutter_travel_ui/screens/home_screen/widgets/hotel_carousel/hotel_image.dart';
import 'package:flutter_travel_ui/screens/home_screen/widgets/hotel_carousel/hotel_info.dart';
import 'package:flutter_travel_ui/models/hotel_model.dart';

class HotelCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        HotelCarouselHeader(),
        Container(
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: hotels.length,
            itemBuilder: (BuildContext context, int index) {
              Hotel hotel = hotels[index];
              return Container(
                margin: EdgeInsets.all(10.0),
                width: 240.0,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    HotelInfo(hotel),
                    HotelImage(hotel),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

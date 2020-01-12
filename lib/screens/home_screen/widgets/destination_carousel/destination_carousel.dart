import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/models/destination_model.dart';
import 'package:flutter_travel_ui/screens/destination_screen/destination_screen.dart';
import 'package:flutter_travel_ui/screens/home_screen/widgets/destination_carousel/destination_carousel_header.dart';
import 'package:flutter_travel_ui/screens/home_screen/widgets/destination_carousel/destination_info.dart';
import 'package:flutter_travel_ui/screens/home_screen/widgets/destination_carousel/destination_image.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        DestinationCarouselHeader(),
        Container(
          height: 300.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              Destination destination = destinations[index];
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DestinationScreen(
                      destination: destination,
                    ),
                  ),
                ),
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  width: 210.0,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      DestinationInfo(destination),
                      DestinationImage(destination),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

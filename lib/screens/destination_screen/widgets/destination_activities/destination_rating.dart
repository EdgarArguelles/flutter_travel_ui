import 'package:flutter/material.dart';

class DestinationRating extends StatelessWidget {
  final int _rating;

  DestinationRating(this._rating);

  @override
  Widget build(BuildContext context) {
    String stars = '';
    for (int i = 0; i < _rating; i++) {
      stars += '⭐ ';
    }

    return Text(stars.trim());
  }
}

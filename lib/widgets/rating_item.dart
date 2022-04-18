import 'package:carikos/theme.dart';
import 'package:flutter/material.dart';

class RatingItem extends StatelessWidget {
  final int index, rating;
  const RatingItem({Key? key, required this.index, required this.rating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      index <= rating
          ? 'assets/images/star.png'
          : 'assets/images/star_grey.png',
      width: 20,
    );
  }
}

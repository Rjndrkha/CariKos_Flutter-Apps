import 'package:carikos/theme.dart';
import 'package:flutter/material.dart';

class FacilityItem extends StatelessWidget {
  final String name;
  final String imageurl;
  final int total;

  const FacilityItem(
      {Key? key,
      required this.name,
      required this.imageurl,
      required this.total})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageurl,
          width: 21,
        ),
        const SizedBox(
          height: 8,
        ),
        Text.rich(
          TextSpan(
            text: '$total ',
            style: purplestyle.copyWith(
              fontSize: 14,
            ),
            children: [
              TextSpan(
                text: name,
                style: greystyle.copyWith(
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

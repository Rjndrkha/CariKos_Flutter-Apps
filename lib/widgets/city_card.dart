import 'package:carikos/models/city.dart';
import 'package:carikos/theme.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {

  
  final City city;
  const CityCard(this.city, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: const Color(0xffF6F7F8),
        child: Column(children: [
          Image.asset(
            city.imageUrl,
            
            width: 120,
            height: 102,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 11,
          ),
          Text(
            city.name,
            
            style: blackstyle.copyWith(fontSize: 16),
          )
        ]),
      ),
    );
  }
}

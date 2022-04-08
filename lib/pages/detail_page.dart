import 'package:flutter/material.dart';
import 'package:carikos/models/space.dart';

class DetailPage extends StatelessWidget {
  final Space space;

  const DetailPage(this.space, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Hello'),
    );
  }
}

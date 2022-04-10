import 'package:carikos/models/tips.dart';
import 'package:carikos/theme.dart';
import 'package:flutter/material.dart';

class TipsCard extends StatelessWidget {
  final Tips tips;
  const TipsCard(this.tips, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            height: 80,
            width: 80,
            child: Stack(
              children: [Image.asset(tips.imageUrl)],
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tips.title,
              style: blackstyle.copyWith(fontSize: 18),
            ),
            Text(
              'Updated ${tips.date}',
              style: greystyle.copyWith(fontSize: 14),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
            onPressed: () {
              
            },
            icon: Icon(
              Icons.chevron_right,
              color: grey,
            )),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

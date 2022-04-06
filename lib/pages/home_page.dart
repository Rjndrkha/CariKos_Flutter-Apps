import 'package:carikos/models/city.dart';
import 'package:carikos/theme.dart';
import 'package:carikos/widgets/city_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: edge,
        ),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Explore Now',
                style: blackstyle.copyWith(
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Search your cozy Places \u2665',
                style: greystyle.copyWith(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Popular Cities',
                style: regulerstyle.copyWith(
                  fontSize: 15,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              height: 190,
              child: ListView(scrollDirection: Axis.horizontal, children: [
                const SizedBox(
                  width: 24,
                ),
                CityCard(
                  City(
                    id: 1,
                    name: 'Jakarta',
                    imageUrl: 'assets/images/homeimg/jkt.jpg',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CityCard(
                  City(
                    id: 2,
                    name: 'Aceh',
                    imageUrl: 'assets/images/homeimg/aceh.jpg',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CityCard(
                  City(
                    id: 3,
                    name: 'Bali',
                    imageUrl: 'assets/images/homeimg/bali.jpg',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CityCard(
                  City(
                    id: 4,
                    name: 'Bandung',
                    imageUrl: 'assets/images/homeimg/bdg.jpg',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CityCard(
                  City(
                    id: 5,
                    name: 'Palembang',
                    imageUrl: 'assets/images/homeimg/plmbg.jpg',
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                CityCard(
                  City(
                    id: 6,
                    name: 'Surabaya',
                    imageUrl: 'assets/images/homeimg/sby.jpg',
                  ),
                ),
              ]),
            )
          ],
        ),
      )),
    );
  }
}

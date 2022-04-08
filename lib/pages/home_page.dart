import 'package:carikos/models/city.dart';
import 'package:carikos/models/space.dart';
import 'package:carikos/theme.dart';
import 'package:carikos/widgets/city_card.dart';
import 'package:carikos/widgets/space_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge,
          ),
          child: ListView(
            children: [
              //Header
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
              //Popular Cities
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
              //Image Popular
              SizedBox(
                height: 150,
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
                      isPopular: true,
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
                      isPopular: true,
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
                      isPopular: true,
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                ]),
              ),
              // Recomended Place
              const SizedBox(
                height: 15,
              ),

              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Recomended Space',
                  style: regulerstyle.copyWith(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  SpaceCard(
                    Space(
                        id: 1,
                        imageUrll: 'assets/images/homeimg/sby.jpg',
                        name: 'Oemah Nyaman',
                        price: 150,
                        country: 'Aceh',
                        rating: 4),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SpaceCard(
                    Space(
                        id: 2,
                        imageUrll: 'assets/images/homeimg/sby.jpg',
                        name: 'Oemah Nyaman',
                        price: 150,
                        country: 'Aceh',
                        rating: 4),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SpaceCard(
                    Space(
                        id: 3,
                        imageUrll: 'assets/images/homeimg/sby.jpg',
                        name: 'Oemah Nyaman',
                        price: 150,
                        country: 'Aceh',
                        rating: 4),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

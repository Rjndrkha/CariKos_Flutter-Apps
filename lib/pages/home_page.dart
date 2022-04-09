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
              //REKOMENDED PLACE
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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    SpaceCard(
                      Space(
                          id: 1,
                          imageUrll: 'assets/images/homeimg/sby.jpg',
                          name: 'Oemah Nyaman',
                          price: 150,
                          city: 'Surabaya',
                          country: 'ID',
                          rating: 4),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SpaceCard(
                      Space(
                          id: 2,
                          imageUrll: 'assets/images/homeimg/bali.jpg',
                          name: 'Roemah Nenek',
                          price: 150,
                          city: 'Bali',
                          country: 'ID',
                          rating: 4),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SpaceCard(
                      Space(
                          id: 3,
                          imageUrll: 'assets/images/homeimg/sby.jpg',
                          name: 'Hisanah Kost',
                          price: 150,
                          city: 'Jakarta',
                          country: 'ID',
                          rating: 4),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                      color: orange,
                      child: Text(
                        'Explore More',
                        style: whitestyle,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // GUIDANCE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Tips & Guidance',
                  style: regulerstyle.copyWith(
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 80,
                        width: 80,
                        child: Stack(
                          children: [Image.asset('assets/images/guid1.png')],
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
                          'City Guidelines',
                          style: blackstyle.copyWith(fontSize: 18),
                        ),
                        Text(
                          'Updated 20 Apr',
                          style: greystyle.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        height: 80,
                        width: 80,
                        child: Stack(
                          children: [Image.asset('assets/images/guid2.png')],
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
                          'Jakarta Fairship',
                          style: blackstyle.copyWith(fontSize: 18),
                        ),
                        Text(
                          'Updated 11 Dec',
                          style: greystyle.copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

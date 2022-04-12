import 'package:carikos/theme.dart';
import 'package:flutter/material.dart';
import 'package:carikos/models/space.dart';

class DetailPage extends StatelessWidget {
  final Space space;

  const DetailPage(this.space, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(children: [
          Image.asset(
            'assets/images/detailimg/home.jpg',
            width: MediaQuery.of(context).size.width,
            height: 350,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: edge,
              vertical: 30,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Image.asset(
                    'assets/images/icon/btn_back.png',
                    width: 40,
                  ),
                ),
                Image.asset(
                  'assets/images/icon/btn_wishlist.png',
                  width: 40,
                )
              ],
            ),
          ),
          ListView(
            children: [
              const SizedBox(
                height: 328,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: edge),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                space.name,
                                style: blackstyle.copyWith(fontSize: 22),
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'Rp${space.price}K',
                                  style: purplestyle.copyWith(
                                    fontSize: 16,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: ' / month',
                                      style: greystyle.copyWith(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/star.png',
                                width: 20,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/images/star.png',
                                width: 20,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/images/star.png',
                                width: 20,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/images/star.png',
                                width: 20,
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              Image.asset(
                                'assets/images/star.png',
                                width: 20,
                                color: grey,
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}

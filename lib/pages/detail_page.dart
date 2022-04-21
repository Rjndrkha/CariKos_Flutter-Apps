import 'package:carikos/pages/eror_page.dart';
import 'package:carikos/theme.dart';
import 'package:carikos/widgets/facility_item.dart';
import 'package:carikos/widgets/rating_item.dart';
import 'package:flutter/material.dart';
import 'package:carikos/models/space.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  final Space space;

  const DetailPage(this.space, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        //throw (url);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const ErorPage()));
      }
    }

    Future<void> _showMyDialog() async {
      // BOOK NOW CONFIRMATION
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Confirmation'),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text('Apakah anda ingin Hubungi pemilik kos ?'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                child: const Text('Batal'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: const Text('Hubungi'),
                onPressed: () {
                  launchUrl('tel:628931565880');
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.network(
              //'assets/images/detailimg/home.jpg',
              space.imageUrll,
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),

            ListView(
              children: [
                const SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  //height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      // NOTE: TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: edge,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  space.name,
                                  style: blackstyle.copyWith(
                                    fontSize: 22,
                                  ),
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
                              children: [1, 2, 3, 4, 5].map((index) {
                                return Container(
                                  margin: const EdgeInsets.only(
                                    left: 2,
                                  ),
                                  child: RatingItem(
                                      index: index, rating: space.rating),
                                );
                              }).toList(),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      // NOTE: MAIN FACILITIES
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Main Facilities',
                          style: regulerstyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            FacilityItem(
                                name: 'Kitchen',
                                imageurl: 'assets/images/icon/icon_bar.png',
                                total: 2),
                            FacilityItem(
                                name: 'Bedroom',
                                imageurl: 'assets/images/icon/icon_bed.png',
                                total: 3),
                            FacilityItem(
                                name: 'Lemari',
                                imageurl: 'assets/images/icon/icon_lemari.png',
                                total: 3),
                          ],
                        ),
                      ),
                      // PHOTO
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photos',
                          style: regulerstyle.copyWith(fontSize: 15),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: edge,
                            ),
                            Image.asset(
                              'assets/images/detailimg/detail1.jpg',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/images/detailimg/detail2.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/images/detailimg/detail3.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/images/detailimg/detail4.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            const SizedBox(
                              width: 18,
                            ),
                            Image.asset(
                              'assets/images/detailimg/detail5.png',
                              width: 110,
                              height: 88,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(
                              width: edge,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      //LOCATION
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Location',
                          style: regulerstyle.copyWith(fontSize: 15),
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'JL.Danau Maninjau Barat III \nMalang',
                              style: greystyle.copyWith(fontSize: 14),
                            ),
                            InkWell(
                              onTap: () {
                                launchUrl(
                                    space.mapsLocation); //Calling Maps Location
                                //'https://www.google.co.id/maps/place/OYO+528+Safa+Guest+House/@-7.9702762,112.6556212,15z/data=!4m8!3m7!1s0x2dd628599e6fbc13:0x885809480e840fab!5m2!4m1!1i2!8m2!3d-7.9723757!4d112.6627377');
                              },
                              child: Icon(
                                Icons.location_on,
                                color: grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      //BUTTON
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: edge),
                        height: 50,
                        width: MediaQuery.of(context).size.width - (2 * edge),
                        child: RaisedButton(
                          onPressed: () {
                            //launchUrl('tel:628931565880');
                            _showMyDialog(); // CALLING POPUP CONFIRMATION
                          },
                          color: purple,
                          child: Text(
                            'Book Now',
                            style: whitestyle.copyWith(fontSize: 18),
                          ),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17)),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
            //END LIST VIEW
            Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: edge),
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

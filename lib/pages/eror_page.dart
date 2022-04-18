import 'package:carikos/pages/home_page.dart';
import 'package:carikos/theme.dart';
import 'package:flutter/material.dart';

class ErorPage extends StatelessWidget {
  const ErorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          bottom: false,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/404.png',
                  width: 300,
                ),
                const SizedBox(
                  height: 70,
                ),
                Text(
                  'Where are you going?',
                  style: blackstyle.copyWith(fontSize: 24),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  'Seems like the page that you were requested is already gone',
                  style: greystyle.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: 250,
                  height: 55,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.pushAndRemoveUntil(
                          //agar back to context before
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                          (route) => false);
                    },
                    color: purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(
                      '\u2665 Back To Home \u2665',
                      style: whitestyle.copyWith(
                        fontSize: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}

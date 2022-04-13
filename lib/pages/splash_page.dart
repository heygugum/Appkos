// ignore_for_file: prefer_const_constructors, deprecated_member_use, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:latihan1/pages/home_page.dart';
import 'package:latihan1/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset('assets/images/bottom.png')),
            Padding(
              padding: EdgeInsets.only(
                top: 50,
                left: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/icon.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Find Cozy House\nto Stay and Happy',
                    style: blackStayle.copyWith(
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Stop dah cari kosan yang bagus',
                    style: greyStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 210,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      color: purpleColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Text(
                        'Explore Now',
                        style: whiteStayle,
                      ),
                    ),
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

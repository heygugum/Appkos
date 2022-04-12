// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_element

import 'package:flutter/material.dart';
import 'package:latihan1/models/space.dart';
import 'package:latihan1/pages/erroe.dart';
// import 'package:latihan1/pages/eror_page.dart';
import 'package:latihan1/theme.dart';
import 'package:latihan1/widgets/fasility_main.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
   final Space space;

  DetailPage(this.space);

  @override
  Widget build(BuildContext context) {
    // launchUrl(url) async {
    //   if (await canLaunch(url)) {
    //     launch(url);
    //   } else {
    //     // Navigator.push(
    //     //   context,
    //     //   MaterialPageRoute(
    //     //     builder: (context) => ErorPage(),
    //     //   ),
    //     // );

    //     throw (url);
    //   }
    // }
      // add me
    launchUrl(url) async => await canLaunch(url)
        ? await launch(url)
        // throw
        : Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ErrorPage(),
            ),
          );

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
              // add me
            Image.network(
             space.imageUrl,
              width: MediaQuery.of(context).size.width,
              height: 320,
              fit: BoxFit.cover,
            ),
            ListView(children: [
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
                        'assets/images/btn_back.png',
                        width: 40,
                      ),
                    ),
                    Image.asset(
                      'assets/images/btn_wishlist.png',
                      width: 40,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 205,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                  color: whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30,
                    ),
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
                                'Kuretakeso Hott',
                                style: blackStayle.copyWith(
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(
                                height: 2,
                              ),
                              Text.rich(
                                TextSpan(
                                    text: '\$52',
                                    style: purpleStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                    children: [
                                      TextSpan(
                                        text: '/ month',
                                        style: greyStyle.copyWith(fontSize: 16),
                                      ),
                                    ]),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/Icon_star_solid.png',
                                width: 20,
                              ),
                              Image.asset(
                                'assets/images/Icon_star_solid.png',
                                width: 20,
                              ),
                              Image.asset(
                                'assets/images/Icon_star_solid.png',
                                width: 20,
                              ),
                              Image.asset(
                                'assets/images/Icon_star_solid.png',
                                width: 20,
                              ),
                              Image.asset(
                                'assets/images/Icon_star_solid.png',
                                width: 20,
                                color: Color(0xff989ba1),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: edge),
                      child: Text(
                        'Main Fasilities',
                        style: blackStayle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: edge,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FasilitiesPage(
                            name: 'kitchen',
                            imageUrl: 'assets/images/001-bar-counter.png',
                            total: 2,
                          ),
                          FasilitiesPage(
                            name: 'Bedroom',
                            imageUrl: 'assets/images/002-double-bed.png',
                            total: 4,
                          ),
                          FasilitiesPage(
                            name: 'kursi',
                            imageUrl: 'assets/images/003-cupboard.png',
                            total: 1,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: edge),
                      child: Text(
                        'Photos',
                        style: blackStayle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
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
                            'assets/images/image2.png',
                            width: 110,
                            height: 88,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: edge,
                          ),
                          Image.asset(
                            'assets/images/image1.png',
                            width: 110,
                            height: 88,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(
                            width: edge,
                          ),
                          Image.asset(
                            'assets/images/image3.png',
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
                    SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: edge),
                      child: Text(
                        'Location',
                        style: blackStayle.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: edge,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Jln. Otonom no. 02 09\nTangerang',
                            style: greyStyle.copyWith(
                              fontSize: 16,
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              launchUrl('https://www.youtube.com/');
                            },
                            child: Image.asset(
                              'assets/images/btn_wishlist (1).png',
                              width: 36,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: edge,
                      ),
                      height: 50,
                      width: MediaQuery.of(context).size.width - (2 + edge),
                      // ignore: deprecated_member_use
                      child: RaisedButton(
                        onPressed: () {
                          launchUrl('tel://+62895331895113');
                        },
                        color: purpleColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(17),
                        ),
                        child: Text(
                          'Book Now',
                          style: whiteStayle.copyWith(
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:latihan1/models/space.dart';
import 'package:latihan1/pages/detail_page.dart';
import 'package:latihan1/theme.dart';

class SpaceCardd extends StatelessWidget {
  final Space space;

  SpaceCardd(
    this.space,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(),
          ),
        );
      },
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Container(
              width: 130,
              height: 110,
              child: Stack(
                children: [
                  Image.asset(space.imageUrl),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 70,
                      height: 30,
                      decoration: BoxDecoration(
                        color: purpleColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35),
                        ),
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/Icon_star_solid.png',
                              width: 22,
                              height: 22,
                            ),
                            Text('${space.rating} /5')
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                space.name,
                style: blackStayle.copyWith(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text.rich(
                TextSpan(
                    text: '\$${space.price}',
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
              SizedBox(
                height: 16,
              ),
              Text(
                '${space.city}, ${space.country}',
                style: greyStyle,
              ),
            ],
          )
        ],
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:latihan1/models/city.dart';
import 'package:latihan1/theme.dart';

class CityCard extends StatelessWidget {
  final City city;

  CityCard(
    this.city,
  );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 120,
        width: 120,
        color: Color.fromARGB(255, 211, 211, 211),
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  city.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,
                ),
                city.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                            color: purpleColor,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(35),
                            ),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/Icon_star_solid.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(city.name),
          ],
        ),
      ),
    );
  }
}

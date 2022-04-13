// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, prefer_typing_uninitialized_variables, avoid_init_to_null, unused_local_variable

import 'package:flutter/material.dart';
import 'package:latihan1/models/city.dart';
import 'package:latihan1/models/space.dart';
import 'package:latihan1/models/tips.dart';
import 'package:latihan1/providers/space_provider.dart';
import 'package:latihan1/theme.dart';
import 'package:latihan1/widgets/bottom_navbar.dart';
import 'package:latihan1/widgets/city_card.dart';
import 'package:latihan1/widgets/space_card.dart';
import 'package:latihan1/widgets/tips_card.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);
    SpaceProvider.getRecommendedSpaces();

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: edge),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: edge,
                ),
                child: Text(
                  'Explore Now',
                  style: blackStayle.copyWith(
                    fontSize: 28,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Silahkan cari kosan',
                  style: greyStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Popular Cityes',
                  style: blackStayle.copyWith(
                    fontSize: 28,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(
                      City(
                        id: 1,
                        name: 'jakarta',
                        imageUrl: 'assets/images/image1.png',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CityCard(
                      City(
                          id: 2,
                          name: 'bandung',
                          imageUrl: 'assets/images/image2.png',
                          isPopular: true),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CityCard(
                      City(
                        id: 3,
                        name: 'Malang',
                        imageUrl: 'assets/images/image3.png',
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Recommended Space',
                  style: blackStayle.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                ),
                child: FutureBuilder(
                  future: SpaceProvider.getRecommendedSpaces(),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      List<Space> data = snapshot.data ?? [];

                      int index = 0;

                      return Column(
                        children: data.map((item) {
                          index++;
                          return Container(
                            margin: EdgeInsets.only(
                              top: index == 1 ? 0 : 30,
                            ),
                            child: SpaceCardd(item),
                          );
                        }).toList(),
                      );
                    }
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Tips & Quidance',
                  style: blackStayle.copyWith(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge,
                ),
                child: Column(
                  children: [
                    TipsCard(
                      Tips(
                          id: 1,
                          imageUrl: 'assets/images/icon.png',
                          title: 'Kota baru',
                          update: '12 mar'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TipsCard(
                      Tips(
                          id: 1,
                          imageUrl: 'assets/images/pic5.png',
                          title: 'Kota lama',
                          update: '22 apr'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: 350,
        margin: EdgeInsets.symmetric(
          horizontal: edge,
        ),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 236, 236, 236),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/images/Icon_home_solid (1).png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/Icon_mail_solid.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/Icon_card_solid.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/Icon_love_solid.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:latihan1/theme.dart';

class FasilitiesPage extends StatelessWidget {
  final String name;
  final String imageUrl;
  final int total;

  FasilitiesPage(
      {required this.imageUrl, required this.name, required this.total});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl,
          width: 32,
        ),
        Text.rich(
          TextSpan(
            text: '$total',
            style: purpleStyle.copyWith(
              fontSize: 16,
            ),
            children: [
              TextSpan(
                text: ' $name',
                style: greyStyle.copyWith(fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
